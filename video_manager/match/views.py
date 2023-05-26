# -*- coding: utf-8 -*-
"""match views."""
from flask import (
    Blueprint,
    current_app,
    flash,
    redirect,
    render_template,
    request,
    url_for,
)
from flask_login import login_required
from collections import namedtuple

from video_manager.utils import flash_errors

from sqlalchemy import desc, asc

from .models import Match, Color, Fighter, MatchFighterMap, School, Tag, Tournament, Video
from .forms import CreateMatchForm, MatchSearchForm, UpdateMatchTagForm, UpdateMatchNoteForm, UpdateMatchFighterForm, MatchFighterForm

blueprint = Blueprint("match", __name__, url_prefix="/matches", static_folder="../static")


@blueprint.route("/data/tournaments")
@login_required
def tournaments():
    """List tournaments."""
    tournaments = list(map(lambda t: t.as_dict(), Tournament.query.order_by(desc(Tournament.start_date)).all()))
    return tournaments

@blueprint.route("/data/tags")
@login_required
def tags():
    """List tags."""
    tags = list(map(lambda t: t.as_dict(), Tag.query.all()))
    return tags

@blueprint.route("/data/fighters")
@login_required
def fighters():
    """List fighters."""
    fighters = list(map(lambda t: t.as_dict(), Fighter.query.all()))
    return fighters

@blueprint.route("/data/schools")
@login_required
def schools():
    """List schools."""
    schools = list(map(lambda t: t.as_dict(), School.query.all()))
    return schools


@blueprint.route("/", methods=["GET", "POST"])
@login_required
def index():
    """List matches."""
    def enforce_list(id_or_list):
        if type(id_or_list) == list:
            return id_or_list
        elif id_or_list == None:
            return []
        return [id_or_list]
    tournament_ids = enforce_list(request.args.getlist('tournament_ids'))
    tag_ids = enforce_list(request.args.getlist('tag_ids'))
    fighter_ids = enforce_list(request.args.getlist('fighter_ids'))
    school_ids = enforce_list(request.args.getlist('school_ids'))

    query = Match.query

    if tournament_ids != []:
        query = query.join(Tournament).filter(Tournament.id.in_(tournament_ids))
    if tag_ids != []:
        query = query.join(Match.tags).filter(Match.tags.any(Tag.id.in_(tag_ids)))
    if fighter_ids != []:
        query = query.join(Match.match_fighter_maps).filter(
            Match.match_fighter_maps.any(MatchFighterMap.fighter_id.in_(fighter_ids)))
    if school_ids != []:
        query = query.join(Match.match_fighter_maps).join(MatchFighterMap.fighter).filter(
            MatchFighterMap.fighter.has(Fighter.school_id.in_(school_ids)))

    matches = query.all()

    matches.sort(key=lambda m: m.tournament.start_date)

    return render_template("matches/index.html", matches=matches)

@ blueprint.route("/<match_id>", methods=["GET", "POST", "PATCH"])
@ login_required
def match(match_id):
    """Matches."""
    match = Match.query.filter_by(id=match_id).first()

    tag_form = UpdateMatchTagForm(request.form)
    tags = [(t.id, t.__repr__()) for t in Tag.query.order_by(asc(Tag.tag)).all()]
    tag_form.tags.choices = tags

    note_form = UpdateMatchNoteForm(request.form)
    template_fighter_form = MatchFighterForm(request.form, prefix='match_fighter_maps-_-')
    fighter_form = UpdateMatchFighterForm(request.form)

    fighters = [(t.id, t.__repr__()) for t in Fighter.query.order_by(asc(Fighter.name)).all()]
    colors = [(t.id, t.__repr__()) for t in Color.query.order_by(asc(Color.color)).all()]

    if request.method == 'POST':
        for mfm in fighter_form.match_fighter_maps:
            mfm.fighter.choices = fighters
            mfm.color.choices = colors
        print(request.form)

        if request.form.getlist('tags') and tag_form.validate_on_submit():
            match.update_tags(tag_form.tags.data)
        if request.form.getlist('notes') and note_form.validate_on_submit():
            match.update_notes(note_form.notes.data)
        if request.form.getlist('update-fighter') and fighter_form.validate_on_submit():
            print(fighter_form.match_fighter_maps.data)
            match.update_match_fighter_maps(fighter_form.match_fighter_maps.data)
        return redirect(url_for('match.match', match_id=match_id))
    if request.method == 'GET':
        current_tags = [t.id for t in match.tags]
        fighter = namedtuple('Fighter', ['color', 'color_id', 'order', 'fighter', 'fighter_id'])
        current_fighters = [fighter(mfm.color, mfm.color_id, mfm.order, mfm.fighter.name,
                                    mfm.fighter_id) for mfm in match.match_fighter_maps]

        for fighter in current_fighters:
            fighter_form.match_fighter_maps.append_entry(fighter)

        for index in range(len(fighter_form.match_fighter_maps)):
            fighter_form.match_fighter_maps[index].fighter.choices = fighters
            fighter_form.match_fighter_maps[index].color.choices = colors
            fighter_form.match_fighter_maps[index].fighter.data = current_fighters[index].fighter_id
            fighter_form.match_fighter_maps[index].color.data = current_fighters[index].color_id
            fighter_form.match_fighter_maps[index].order.data = current_fighters[index].order

        template_fighter_form.fighter.choices = fighters
        template_fighter_form.color.choices = colors

        note_form.notes.data = match.notes
        tag_form.tags.data = current_tags

        match_fighter_maps = {}
        for mfm in match.match_fighter_maps:
            color = str(mfm.color.color)
            if color not in match_fighter_maps.keys():
                match_fighter_maps[color] = [mfm]
            else:
                match_fighter_maps[color].append(mfm)

        return render_template("matches/match.html", match=match, match_fighter_maps=match_fighter_maps, tag_form=tag_form, fighter_form=fighter_form, note_form=note_form, _template_fighter_form=template_fighter_form)


@ blueprint.route("/create/", methods=["GET", "POST"])
def create():
    """Create new match."""
    form = CreateMatchForm(request.form)
    if form.validate_on_submit():
        Match.create(
            tournament=form.tournament.data,
            notes=form.notes.data,
            winner=form.winner.data,
            tags=form.tags.data,
            match_fighter_maps=form.match_fighter_maps.data,
            videos=form.videos.data,
        )
        flash("Match added")
        return redirect(url_for("create"))
    else:
        flash_errors(form)
    return render_template("matches/create.html", form=form)

@ blueprint.route("/search/", methods=["GET", "POST"])
def search():
    """Filter matches"""
    form = MatchSearchForm(request.form)

    tags = [(t.id, t.__repr__()) for t in Tag.query.order_by(asc(Tag.tag)).all()]
    tournaments = [(t.id, t.__repr__()) for t in Tournament.query.order_by(desc(Tournament.start_date)).all()]
    fighters = [(t.id, t.__repr__()) for t in Fighter.query.order_by(asc(Fighter.name)).all()]
    schools = [(t.id, t.__repr__()) for t in School.query.order_by(asc(School.name)).all()]

    form.tags.choices = tags
    form.tournaments.choices = tournaments
    form.fighters.choices = fighters
    form.schools.choices = schools

    if form.validate_on_submit():
        return redirect(url_for("match.index", tournament_ids=form.tournaments.data, tag_ids=form.tags.data, fighter_ids=form.fighters.data, school_ids=form.schools.data))
    else:
        flash_errors(form)
    return render_template("matches/search.html", form=form)
