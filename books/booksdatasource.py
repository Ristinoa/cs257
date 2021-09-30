#!/usr/bin/env python3
'''
    booksdatasource.py
    Jeff Ondich, 21 September 2021

    For use in the "books" assignment at the beginning of Carleton's
    CS 257 Software Design class, Fall 2021.
'''

import csv

class Author:
    def __init__(self, surname='', given_name='', birth_year=None, death_year=None):
        self.surname = surname
        self.given_name = given_name
        self.birth_year = birth_year
        self.death_year = death_year

    def __eq__(self, other):
        ''' For simplicity, we're going to assume that no two authors have the same name. '''
        return self.surname == other.surname and self.given_name == other.given_name

class Book:
    def __init__(self, title='', publication_year=None, authors=[]):
        ''' Note that the self.authors instance variable is a list of
            references to Author objects. '''
        self.title = title
        self.publication_year = publication_year
        self.authors = authors

    def __eq__(self, other):
        ''' We're going to make the excessively simplifying assumption that
            no two books have the same title, so "same title" is the same
            thing as "same book". '''
        return self.title == other.title

class BooksDataSource:
    def __init__(self, books_csv_file_name):
        ''' The books CSV file format looks like this:

                title,publication_year,author_description

            For example:

                All Clear,2010,Connie Willis (1945-)
                "Right Ho, Jeeves",1934,Pelham Grenville Wodehouse (1881-1975)

            This __init__ method parses the specified CSV file and creates
            suitable instance variables for the BooksDataSource object containing
            a collection of Author objects and a collection of Book objects.
        '''
        self.books = []
        self.authors = []
        with open(books_csv_file_name) as csvfile:
            reader = csv.reader(books_csv_file_name)
            for line in reader:
                this_books_authors = line[2].split(' and ')
                for author in this_books_authors:
                    curr_author = author.split()
                    first_name = curr_author[0]
                    if len(curr_author) > 3:
                        first_name += " " + curr_author[1]
                        surname = curr_author[2]
                        years = curr_author[3].strip('(').strip(')').split('-')
                        birth_year = int(years[0])
                        death_year = None
                        if len(years) > 1:
                            death_year = int(years[1])
                    new_author = Author(surname, first_name, birth_year, death_year)
                    self.authors.append(new_author)
                    this_books_authors.append(new_author)
                self.books.append(Book(line[0], int(line[1]), this_books_authors) 
                sorted(self.books, key=lambda book: book.title)

    def authors(self, search_text=None):
        ''' Returns a list of all the Author objects in this data source whose names contain
            (case-insensitively) the search text. If search_text is None, then this method
            returns all of the Author objects. In either case, the returned list is sorted
            by surname, breaking ties using given name (e.g. Ann Brontë comes before Charlotte Brontë).
        '''
        authors = []
        for author in self.Authors:
            if search_text in author.surname or search_text in author.given_name:
                authors.append(author)
                return sorted(authors, key=lambda author: author.surname)

    def books(self, search_text=None, sort_by='title'):
        ''' Returns a list of all the Book objects in this data source whose
            titles contain (case-insensitively) search_text. If search_text is None,
            then this method returns all of the books objects.

            The list of books is sorted in an order depending on the sort_by parameter:

                'year' -- sorts by publication_year, breaking ties with (case-insenstive) title
                'title' -- sorts by (case-insensitive) title, breaking ties with publication_year
                default -- same as 'title' (that is, if sort_by is anything other than 'year'
                            or 'title', just do the same thing you would do for 'title')
        '''
        books = []
        for book in self.books:
            if search_text in book.title: 
                books.append(book)
        return sorted(books, key=lambda book: book.sort_by)

    def books_between_years(self, start_year=None, end_year=None):
        ''' Returns a list of all the Book objects in this data source whose publication
            years are between start_year and end_year, inclusive. The list is sorted
            by publication year, breaking ties by title (e.g. Neverwhere 1996 should
            come before Thief of Time 1996).

            If start_year is None, then any book published before or during end_year
            should be included. If end_year is None, then any book published after or
            during start_year should be included. If both are None, then all books
            should be included.
        '''
        books = []
        if start_year is None:
            start_year = 0
        if end_year is None:
            end_year = 10000
        for book in self.books:
            if book.publication_year <= end_year and book.publication_year >= start_year:
                books.append(book)
        return sorted(books, key=lambda book: book.publication_year)

