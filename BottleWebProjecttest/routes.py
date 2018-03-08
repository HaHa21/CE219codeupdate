"""
Routes and views for the bottle application.
"""
from config import *
from html import entities
from bottle import *
from entities import *
from pony.orm.integration.bottle_plugin import PonyPlugin
install(PonyPlugin())

import datetime


@route('/')

@view('index')
def index():
     return template('index')

@route('/books')

def all_books():

     books = select(b for b in Book)
     return template('books/index', books = books)

@route('/books/<id>/')

def showbook(id):
    book = Book[id]
    
    return template( 'books/showbook', book = book)
    
@route('/books/new')

def new_books():
   
    authorlist = select(a for a in Author)
    publisherlist = select(p for p in Publisher)
    genrelist = select(g for g in Genre)
    
    return template('books/addbook', mydate = datetime.date.today(), authorlist = authorlist, publisherlist = publisherlist, genrelist = genrelist)

@route('/books/create', method="POST")
def create_book():
   
    title = request.forms.get('title')
    author = Author.get(id = request.forms.get('author'))
    publisher = Publisher.get(id = request.forms.get('publisher'))
    genre = Genre.get(id = request.forms.get('genre'))
    year = request.forms.get('year')

    print(title, author, publisher, genre, year)

    book = Book(title = title, author = author, publisher = publisher, genre = genre, year = year)
   
    redirect('/')

@route('/books/<id>/edit')

@view('editbooks')
def showbook(id):
   
    book = Book[id]
    return template('books/editbooks', mydate = datetime.date.today(), book = book)

@post('/books/<id>/update')
def update_book(id):
    book = Book[id]
    book.title = request.forms.get('title')
    book.author = Author.get(id = request.forms.get('author'))
    book.publisher = Publisher.get(id = request.forms.get('publisher'))
    book.genre = Genre.get(id = request.forms.getter('genre'))
    book.year = request.forms.get('year')
    redirect('/')

@route('/books/<id>/delete')

def delete_contact(id):
    book = Book[id]
    book.delete()
    redirect('/')

@route('/authors')

def all_books():

     authors = select(b for b in Book)
     return template('author/index', authors = authors)

@route('/authors/new')

def new_books():
   
    authorlist = select(a for a in Author)
  
    return template('author/addauthor', mydate = datetime.date.today(), authorlist = authorlist)

@route('/authors/create', method = "POST")

@view('/author/addauthor')

def author():
    firstname = request.forms.get("firstname")
    lastname = request.forms.get("lastname")

    author = Author(firstname = firstname, lastname = lastname)

    redirect('/')

    return dict(mydate = datetime.date.today())

@route('/authors/<id>/edit')

@view('/author/editauthor')
def showbook(id):
   
    author = Author[id]
    return template('books/editbooks', mydate = datetime.date.today(), author = author)

@post('/authors/<id>/update')
def update_book(id):
    
    author = Author[id]
    author.firstname = request.forms.get('firstname')
    author.lastname = request.forms.get('lastname')
    redirect('/')

@route('/authors/<id>/delete')

def delete_contact(id):
    author = Author[id]
    author.delete()
    redirect('/')

