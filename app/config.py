# config.py

import connexion
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
from marshmallow_sqlalchemy import SQLAlchemyAutoSchema

# basedir = pathlib.Path(__file__).parent.resolve()
connex_app = connexion.App(__name__)

app = connex_app.app
app.config["SQLALCHEMY_DATABASE_URI"] = 'mysql+mysqldb://user:1234@database/wolfcampus_db'
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

db = SQLAlchemy(app)
ma = Marshmallow(app)