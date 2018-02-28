import json
import config
from pony.orm import *

db = Database()

from pony.orm import *


db = Database() 

class Book(db.Entity):
    id = PrimaryKey(int, auto=True)
    title = Required(str)
    authors = Set('Author')
    publishers = Set('Publisher')
    genres = Set('Genre')
    year = Required(str)
    orders = Set('Order')
    


class Author(Book):
    books = Set(Book)
    firstname = Required(str)
    lastname = Required(str)


class Publisher(Book):
    books = Set(Book)
    country = Required(str)


class Genre(Book):
    books = Set(Book)
    name = Required(str)

class Customer(db.Entity):
    firstname = Required(str)
    lastname = Required(str)
    phonenumber = Required(str)
    address = Required(str)
    city = Required(str)
    country = Required(str)


class Order(Customer):
    books = Set('Book')
    Date_of_purchase = Required(str)
 
  
db.bind('sqlite', config.DB_FILE_NAME, create_db=True)

# create the tables
db.generate_mapping(create_tables=True)


