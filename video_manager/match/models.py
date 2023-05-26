# from video_manager.extensions import db

# -*- coding: utf-8 -*-
"""Match models."""

from video_manager.database import Column, PkModel, db, reference_col, relationship

class Color(PkModel):
    __tablename__ = "colors"
    color = Column(db.String())

    def __repr__(self):
        return f'{self.color}'


class Fighter(PkModel):
    __tablename__ = "fighters"
    name = Column(db.String())
    school_id = Column(db.Integer, db.ForeignKey('schools.id'))
    school = relationship("School", back_populates="fighters")
    # matches = db.relationship('Match', secondary=match_fighter_map)

    def __repr__(self):
        return f'{self.name}'

class MatchFighterMap(PkModel):
    __tablename__ = "match_fighter_map"
    match_id = reference_col("matches", nullable=False)
    match = relationship("Match", back_populates="match_fighter_maps")
    fighter_id = reference_col("fighters", nullable=False)
    fighter = relationship("Fighter")
    color_id = reference_col("colors", nullable=True)
    color = relationship("Color")
    order = Column(db.Integer)


tag_match_map = db.Table('tag_match_map',
                         Column('tag_id', db.Integer,
                                db.ForeignKey('tags.id')),
                         Column('match_id', db.Integer,
                                db.ForeignKey('matches.id'))
                         )

class Match(PkModel):
    __tablename__ = "matches"
    tournament_id = Column(db.Integer, db.ForeignKey('tournaments.id'))
    tournament = relationship("Tournament")
    notes = Column(db.Text())
    winner = Column(db.String())
    tags = db.relationship('Tag', secondary=tag_match_map)
    match_fighter_maps = db.relationship('MatchFighterMap', back_populates="match")
    videos = db.relationship('Video')
    def update_notes(self, notes):
        self.notes = notes
        db.session.commit()

    def update_tags(self, tags):
        self.tags = Tag.query.filter(Tag.id.in_(tags)).all()
        db.session.commit()

    def update_match_fighter_maps(self, data):
        old_ids = [mfm.id for mfm in self.match_fighter_maps]
        MatchFighterMap.query.filter(MatchFighterMap.id.in_(old_ids)).delete()

        match_fighter_maps = [MatchFighterMap(match_id=self.id, fighter_id=mfm['fighter'],
                                              color_id=mfm['color'], order=mfm['order']) for mfm in data]
        db.session.add_all(match_fighter_maps)
        db.session.commit()

class School(PkModel):
    __tablename__ = "schools"
    name = Column(db.String())
    fighters = relationship("Fighter", back_populates="school")

    def __repr__(self):
        return f'{self.name}'

class Tag(PkModel):
    __tablename__ = "tags"
    tag = Column(db.String())

    def __repr__(self):
        return f'{self.tag}'

class Tournament(PkModel):
    __tablename__ = "tournaments"
    name = Column(db.String())
    start_date = Column(db.Date())
    end_date = Column(db.Date())

    def __repr__(self):
        return f'{self.name} {str(self.start_date.year)[2:4]}'

class Video(PkModel):
    __tablename__ = "videos"
    match_id = Column(db.Integer, db.ForeignKey('matches.id'))
    url = Column(db.String())
    # order = Column(db.Integer())

    def __repr__(self):
        return f'{self.url}'
