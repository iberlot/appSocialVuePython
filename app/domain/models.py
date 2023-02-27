from datetime import datetime
from config import db, ma

class Account(db.Model):
    __tablename__ = 'account'

    user_id = db.Column(db.Integer(), primary_key=True)
    password = db.Column(db.String(50), nullable=False)
    email = db.Column(db.String(50), nullable=False)
    last_login = db.Column(db.Date, nullable=False)
    creation_date = db.Column(db.Date, nullable=False, default=datetime.utcnow)

    # def __init__(self, password, email, last_login, creation_date) :
    #         self.password = password
    #         self.email = email
    #         self.last_login = last_login
    #         self. creation_date = creation_date

    def __repr__(self) :
              return f'Account({self.user_id}, {self.email})'
    
class AccountSchema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = Account
        load_instance = True
        sqla_session = db.session

account_schema = AccountSchema()
accounts_schema = AccountSchema(many=True)

class Answers(db.Model):
    __tablename__ = 'answers'
    answer_id = db.Column(db.Integer, primary_key=True)
    answer_value = db.Column(db.Integer, nullable=False)

    def __init__(self, answer_value):
        self.answer_value=answer_value

    def __repr__(self):
            return f'Account({self.answer_value})'
    

class BlockedList(db.Model):
    __tablename__ = 'blocked_list'
    user_id = db.Column(db.Integer, primary_key=True)
    blocked_id = db.Column(db.Integer, nullable=False)

    # #relationships
    # user_blockedListFK = db.relationship ("Users", back_populates = "BlockedList", uselist= False)# IS THIS ONE ON ONE?
    # blockedUsersFK = db.relationship("Users") #one blocked list has many users

class Books(db.Model):
    __tablename__ = 'books'

    book_id = db.Column(db.Integer, primary_key=True)
    book_isbn = db.Column(db.String(50), nullable=False)
    book_status = db.Column(db.Integer, nullable=False)
    book_name = db.Column(db.String(50), nullable=False)
    book_author = db.Column(db.String(50), nullable=False)
    book_price = db.Column(db.Integer, nullable=False)
    book_class = db.Column(db.Integer)

    # def __init__(self, book_isbn, book_status, book_name, book_author, book_price, book_class):
    #     self.book_isbn = book_isbn
    #     self.book_status = book_status
    #     self.book_name = book_name
    #     self.book_author = book_author
    #     self.book_price = book_price
    #     self.book_class = book_class
    
    def __repr__(self) :
        return f'Book ({self.book_isbn},{self.book_price},{self.book_author},{self.book_name}, {self.book_status}, {self.book_class})'

class BookPublication(db.Model):
    __tablename__ = 'book_publication'

    publication_id = db.Column(db.Integer, primary_key=True)
    publication_text = db.Column(db.Text, nullable=False)
    publication_date = db.Column(db.Date, nullable=False)
    publication_photo = db.Column(db.String(50))
    book_id = db.Column(db.Integer, nullable=False)
    user_id = db.Column(db.Integer, nullable=False)

    #relationships
    # booksFK = db.relationship ("Books", back_populates ="publications_booksFK")
    # usersFK = db.relationship ("Users", back_populates ="publications_usersFK")

    # def __init__ (self, publication_text,publication_date, publication_photo, book_id, user_id):
    #     self.publication_text = publication_text
    #     self.publication_date = publication_date
    #     self.publication_photo = publication_photo
    #     self.book_id = book_id
    #     self.user_id = user_id

    def __repr__ (self) :
        return f'Book Publications ({self.publication_text}, {self.publication_date},{ self.publication_photo},{self.book_id},{self.user_id} )'

class Buildings(db.Model):
    __tablename__ = 'buildings'
    build_id = db.Column(db.Integer, primary_key=True)
    build_name = db.Column(db.String(50), nullable=False)
    build_code = db.Column(db.String(10), nullable=False)
    build_location = db.Column(db.String(50), nullable=False)
    build_photo = db.Column(db.String(50), nullable=False)

    # def __init__(self, build_code, build_location, build_photo, build_name):
    #     self.build_code= build_code
    #     self.build_location = build_location
    #     self.build_photo = build_photo
    #     self.build_name = build_name
    
    def __repr__(self):
        return f'Building ({self.build_code},{self.build_name},{self.build_location}{self.build_photo})'

class Classes(db.Model):
    __tablename__ = 'classes'
    class_id = db.Column(db.Integer, primary_key=True)
    begin_end_class = db.Column(db.String(50), nullable=False)
    class_sched = db.Column(db.String(50), nullable=False)
    professor = db.Column(db.String(50), nullable=False)
    requirements = db.Column(db.String(50), nullable=False)
    section = db.Column(db.String(50), nullable=False)
    moderator = db.Column(db.Integer, nullable=False)
    building_id = db.Column(db.Integer, nullable=False)
    room = db.Column(db.String(50), nullable=False)

    # def __init__(self, begin_end_class, class_sched, professor, requirements, section, moderator, building_id, room):
    #     self.begin_end_class=begin_end_class
    #     self.class_sched = class_sched
    #     self.professor = professor
    #     self.requirements = requirements
    #     self. section = section
    #     self.room = room

class ClassNote(db.Model):
    __tablename__ = 'class_note'
    classnote_id = db.Column(db.Integer, primary_key=True)
    classnote_text = db.Column(db.Text, nullable=False)
    classnote_photo = db.Column(db.String(50), nullable=False)
    classnote_status = db.Column(db.SmallInteger, nullable=False)
    class_id = db.Column(db.Integer, db.ForeignKey('classes.class_id'), nullable=False)

class FriendList(db.Model):
    __tablename__ = 'friend_list'
    user_id = db.Column(db.Integer, db.ForeignKey('users.user_id'), primary_key=True)
    friend_id = db.Column(db.Integer, db.ForeignKey('users.user_id'), primary_key=True)

class Posts(db.Model):
    __tablename__ = 'posts'
    post_id = db.Column(db.Integer, primary_key=True)
    post_date = db.Column(db.Date, nullable=False)
    post_text = db.Column(db.Text, nullable=False)
    post_photo = db.Column(db.String(50), nullable=True)
    post_status = db.Column(db.SmallInteger, nullable=False)
    user_id = db.Column(db.Integer, db.ForeignKey('users.user_id'), nullable=False)

    # def __init__(self, post_date, post_text, post_photo, post_status, user_id):
    #     self.post_date= post_date
    #     self.post_photo = post_photo
    #     self.post_status = post_status
    #     self.post_text = post_text
    #     self.user_id = user_id
    
    # def __repr__(self):
    #     return f'Post'({self.post_date},{self.post_photo},{self.post_text},{self.post_status},{self.user_id})

class Profiles(db.Model):
    __tablename__ = 'profiles'
    profile_id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer, db.ForeignKey('users.user_id'), nullable=False)
    post_id = db.Column(db.Integer, db.ForeignKey('posts.post_id'), nullable=False)

class Reports(db.Model):
    __tablename__ = 'reports'
    report_id = db.Column(db.Integer, primary_key=True)
    report_status = db.Column(db.SmallInteger, nullable=False)
    post_id = db.Column(db.Integer, db.ForeignKey('posts.post_id'), nullable=False)
    classnote_id = db.Column(db.Integer, db.ForeignKey('class_note.classnote_id'), nullable=False)

class StudentsClassList(db.Model):
    __tablename__ = 'students_class_list'
    class_id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer, primary_key=True)

class StudySessions(db.Model):
    __tablename__ = 'study_sessions'
    ss_id = db.Column(db.Integer, primary_key=True)
    ss_place = db.Column(db.String(50), nullable=False)
    ss_date = db.Column(db.Date, nullable=False)
    ss_time = db.Column(db.String(10), nullable=False)
    build_id = db.Column(db.Integer, nullable=False)
    ss_class = db.Column(db.Integer, nullable=False)
    ss_student_id = db.Column(db.Integer, nullable=False)

class Surveys(db.Model):
    __tablename__ = 'surveys'
    survey_id = db.Column(db.Integer, primary_key=True)
    class_id = db.Column(db.Integer, nullable=False)
    answer_id = db.Column(db.Integer, nullable=False)

class Users(db.Model):
    __tablename__ = 'users' 

    user_id = db.Column(db.Integer, primary_key=True)
    user_name = db.Column(db.String(50), nullable=False)
    user_email = db.Column(db.String(50), nullable=False)
    user_phone = db.Column(db.Integer, nullable=False)
    user_dob = db.Column(db.Date)
    preferred_pronouns = db.Column(db.String(50), nullable=False)
    nickname = db.Column(db.String(50), nullable=False)
    profile_picture = db.Column(db.String(100), nullable=False)
    type_id = db.Column(db.Integer, nullable=False)

    #relationships

    # def __init__(self, user_name, user_email, user_phone, user_dob, preferred_pronouns, nickname,profile_picture,type_id) :
    #         self.user_name= user_name
    #         self.user_email = user_email
    #         self.user_phone = user_phone
    #         self.user_dob=user_dob
    #         self.preferred_pronouns=preferred_pronouns
    #         self.nickname= nickname
    #         self.profile_picture=profile_picture
    #         self.type_id = type_id

    def __repr__(self) :
              return f'Account({self.user_id},{self.user_name},{self.user_email},{self.user_phone}, {self.user_dob}, {self.preferred_pronouns}, {self.nickname},{self.profile_picture},{self.type_id})'
    
# class UserSchema(ma.SQLAlchemyAutoSchema):
#     class Meta:
#         model = Users
#         load_instance = True
#         sqla_session = db.session

# user_schema = UserSchema()
# users_schema = UserSchema(many=True)    

class UserType(db.Model):
    __tablename__ = 'user_type'
    type_id = db.Column(db.Integer, primary_key=True)
    type = db.Column(db.String(50), nullable=False)

#missing all relationships

# if __name__ == '__main__':
#     db.Base.metadata.drop_all(engine)
#     db.Base.metadata.create_all(engine)