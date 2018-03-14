import json
import config
from pony.orm import *

db = Database() 

class Book(db.Entity):
    id = PrimaryKey(int, auto=True)
    title = Required(str)
    author = Required('Author')
    publisher = Required('Publisher')
    genre = Required('Genre')
    year = Required(str)
    orders = Set('Order')
    

class Author(db.Entity):
    id = PrimaryKey(int, auto=True)
    firstname = Required(str)
    lastname = Required(str)
    books = Set('Book')

class Publisher(db.Entity):
    id = PrimaryKey(int, auto = True)
    publishername = Required(str)
    publishercountry = Required(str)
    books = Set('Book')


class Genre(db.Entity):
    id = PrimaryKey(int, auto = True)
    name = Required(str)
    books = Set('Book')

class Customer(db.Entity):
    id = PrimaryKey(int, auto=True)
    firstname = Required(str)
    lastname = Required(str)
    phonenumber = Required(str)
    address = Required(str)
    city = Required(str)
    country = Required(str)
    orders = Set('Order')

class Order(db.Entity):
    id = PrimaryKey(int, auto=True)
    books = Required('Book')
    customers = Required('Customer')
    Date_of_purchase = Required(str)
 

db.bind('sqlite', config.DB_FILE_NAME, create_db=True)

# create the tables
db.generate_mapping(create_tables=True)

