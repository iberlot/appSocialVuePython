# from datetime import datetime

# from flask import abort, make_response
# from domain.models import Users, users_schema, user_schema
# from config import db

# # def get_timestamp():
# #     return datetime.now().strftime(("%Y-%m-%d %H:%M:%S"))


# def read_all():
#     user = Users.query.all()
#     return users_schema.dump(user)


# def create(acc):
#     email = acc.get("email")
#     password = acc.get("password")

#     if email not in ACCOUNT:
#         ACCOUNT[email] = {
#             "email": email,
#             "password": password,
#             "last_login": get_timestamp(),
#             "creation_date": get_timestamp(),
#         }
#         return ACCOUNT[email], 201
#     else:
#         abort(406, f"Account with email {email} already exists")


# def read_one(email):
#     if email in ACCOUNT:
#         return ACCOUNT[email]
#     else:
#         abort(404, f"Account with email {email} not found")


# def update(email, acc):
#     if email in ACCOUNT:
#         ACCOUNT[email]["password"] = acc.get("password", ACCOUNT[email]["password"])
#         ACCOUNT[email]["timestamp"] = get_timestamp()
#         return ACCOUNT[email]
#     else:
#         abort(404, f"Acc with email {email} not found")


# # def delete(email):
# #     if email in ACCOUNT:
# #         del ACCOUNT[email]
# #         return make_response(f"{email} successfully deleted", 200)
# #     else:
# #         abort(404, f"Acc with email {email} not found")

# # def validate (acc):
# #     email = acc.get("email")
# #     password = acc.get("password")

# #     account = Account.query.filter(Account.email == email).one_or_none()

# #     if account is not None:
# #         if password == account_schema.dump(account).get('password'):
# #             return make_response(f"{email} successfully logged in", 200) 
   
# #     abort(404, "Email or password incorrect")
     