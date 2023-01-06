from Server.app import db


class Information(db.Model):
    # tablename = 'userInformation'

    # create columns
    id = db.Column(db.Integer, primary_key=True)
    password = db.Column(db.String(40), unique=True, nullable=False)
    email = db.Column(db.String(40), unique=True, nullable=False)
    name = db.Column(db.String(40), unique=False, nullable=False)
