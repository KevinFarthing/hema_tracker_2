# -*- coding: utf-8 -*-
"""Match forms."""
from flask_wtf import FlaskForm
from wtforms import PasswordField, StringField, FormField, DateField, IntegerField, FieldList, SelectMultipleField, widgets, RadioField, SelectField
from wtforms.validators import DataRequired, Email, EqualTo, Length
from sqlalchemy import desc

from .models import Match, Color, Fighter, MatchFighterMap, School, Tag, Tournament, Video

class SearchTournamentForm(SelectMultipleField):
    """Tournament form"""
    widget = widgets.ListWidget(prefix_label=False)
    option_widget = widgets.CheckboxInput()

class SelectTournamentForm(SelectMultipleField):
    """Tournament form"""
    widget = widgets.ListWidget(prefix_label=False)
    option_widget = widgets.RadioInput()

class SearchTagForm(SelectMultipleField):
    """Tag Form"""
    widget = widgets.ListWidget(prefix_label=False)
    option_widget = widgets.CheckboxInput()

class SearchFighterForm(SelectMultipleField):
    """Fighter Form"""
    widget = widgets.ListWidget(prefix_label=False)
    option_widget = widgets.CheckboxInput()


class SearchSchoolForm(SelectMultipleField):
    """School Form"""
    widget = widgets.ListWidget(prefix_label=False)
    option_widget = widgets.CheckboxInput()

class MatchSearchForm(FlaskForm):
    """Search Form"""

    tournaments = SearchTournamentForm(coerce=int)
    tags = SearchTagForm(coerce=int)
    fighters = SearchFighterForm(coerce=int)
    schools = SearchSchoolForm(coerce=int)


class UpdateFighterForm(SelectField):
    """Fighter Form"""
    fighter = SelectField("Fighter")

class UpdateTagForm(SelectMultipleField):
    """Tag Form"""
    widget = widgets.ListWidget(prefix_label=False)
    option_widget = widgets.CheckboxInput()

class UpdateMatchTagForm(FlaskForm):
    """Tag Form"""
    tags = UpdateTagForm(coerce=int)

class UpdateMatchNoteForm(FlaskForm):
    """Match form."""
    notes = StringField("Notes")

    def validate(self, **kwargs):
        # """Validate the form."""
        # initial_validation = super(MatchForm, self).validate()
        # if not initial_validation:
        #     return False
        # user = User.query.filter_by(username=self.username.data).first()
        # if user:
        #     self.username.errors.append("Username already registered")
        #     return False
        # user = Match.query.filter_by(email=self.email.data).first()
        # if user:
        #     self.email.errors.append("Email already registered")
        #     return False
        return True


class SelectColorForm(SelectField):
    """Color Form"""
    color = SelectField("Color")

class SelectFighterForm(FlaskForm):
    fighter = UpdateFighterForm(coerce=int)
    color = SelectColorForm(coerce=int)
    order = IntegerField("Order")

    def __init__(self, *args, **kwargs):
        """Create instance."""
        super(CreateMatchForm, self).__init__(*args, **kwargs)
        self.user = None

    def validate(self, **kwargs):
        # """Validate the form."""
        # validate videos
        return True


class MatchFighterForm(FlaskForm):
    """Fighter Form"""
    color = SelectColorForm(coerce=int)
    order = IntegerField("Order")
    fighter = UpdateFighterForm(coerce=int)

class UpdateMatchFighterForm(FlaskForm):
    # match_fighter_maps = FormField(MatchFighterForm)
    match_fighter_maps = FieldList(FormField(MatchFighterForm))

class CreateMatchForm(FlaskForm):
    """Match form."""
    tournament = SelectTournamentForm(coerce=int)
    notes = StringField("Notes")
    winner = StringField("Winner")
    tags = FieldList(FormField(UpdateMatchTagForm))
    match_fighter_maps = FieldList(FormField(MatchFighterForm))
    videos = StringField("Video URLS")
