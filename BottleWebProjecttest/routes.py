"""
Routes and views for the bottle application.
"""
from config import *
from bottle import *
from entities import *
from pony.orm.integration.bottle_plugin import PonyPlugin
install(PonyPlugin())

import datetime

@route('/')

@view('index')
def index():
     books = Book.select()
     return dict(books = books)

@route('/books/<id>/')

@view('showbook')

def showbook(id):
    book = Book[id]
    return dict( mydate = datetime.date.today(), book = book)
    
@route('/books/new')
@view('books')

def new_books():
    return dict( mydate = datetime.date.today())

@route('/books/create', method="POST")
def create_book():
    title = request.forms.get('Title')
    authors = request.forms.get('Authors')
    publishers = request.forms.get('Publishers')
    genres = request.forms.get('Genres')
    year = request.forms.get('Year')

    print(title, authors, publishers, genres, year)

    book = Book(title = title, year = year)
    redirect('/')

@route('/books/<id>/edit')

@view('editbooks')
def showbook(id):
   
    book = Book[id]
    return dict(mydate = datetime.date.today(), book = book)

@post('/books/<id>/update')
def update_book(id):
    book = Book[id]
    book.title = request.forms.get('Title')
    for book in books:
      book.authors = request.forms.get('Authors')
    book.publishers = request.forms.get('Publishers')
    book.genres = request.forms.get('Genres')
    book.year = request.forms.get('Year')
    redirect('/')

@route('/books/<id>/delete')

def delete_contact(id):
    book = Book[id]
    book.delete()
    redirect('/')

@route('/author')

@view('author')

def author():
    return dict(mydate = datetime.date.today())


