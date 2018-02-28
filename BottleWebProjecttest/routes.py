"""
Routes and views for the bottle application.
"""

from bottle import *
import datetime

@route('/')

@view('books')

def index():
    return dict(mydate = datetime.date.today())

@route('/author')

@view('author')

def author():
    return dict(mydate = datetime.date.today())


