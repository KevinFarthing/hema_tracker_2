# -*- coding: utf-8 -*-
"""Match forms."""
from flask_wtf import FlaskForm
from wtforms import StringField, FormField, IntegerField, FieldList, SelectMultipleField, widgets, SelectField

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

class MatchFighterForm(FlaskForm):
    """Fighter Form"""
    color = SelectColorForm(coerce=int)
    order = IntegerField("Order")
    fighter = UpdateFighterForm(coerce=int)

class UpdateMatchFighterForm(FlaskForm):
    match_fighter_maps = FieldList(FormField(MatchFighterForm))

class CreateMatchForm(FlaskForm):
    """Match form."""
    tournament = SelectTournamentForm(coerce=int)
    notes = StringField("Notes")
    winner = StringField("Winner")
    tags = FieldList(FormField(UpdateMatchTagForm))
    match_fighter_maps = FieldList(FormField(MatchFighterForm))
    videos = StringField("Video URLS")
