'''
   booksdatasourcetest.py
   Jeff Ondich, 24 September 2021
'''

import booksdatasource
import unittest

class BooksDataSourceTester(unittest.TestCase):
    def setUp(self):
        self.data_source = booksdatasource.BooksDataSource('books1.csv')
        self.small_data_source = booksdatasource.BooksDataSource('books2.csv')

    def tearDown(self):
        pass

    def test_unique_author(self):
        authors = self.data_source.authors('Pratchett')
        self.assertTrue(len(authors) == 1)
        self.assertTrue(authors[0] == Author('Pratchett', 'Terry'))

    def test_unique_title(self):
        titles = self.data_source.books('Beloved')
        self.assertTrue(len(titles) == 1)
        self.assertTrue(titles[0] == Book('Beloved'))

    def test_title_sort(self):
        titles = self.data_source.books()
        prev_book = titles[0]
        for book in titles:
            self.assertLessEqual(prev_book.title.lower(), book.title.lower())
            prev_book = book.lower()

    def test_author_sort(self):
        authors = self.data_source.books()
        prev_book = authors[0]
        for name in authors:
             self.asserLessEqual(prev_book.author.lower(),book.author.lower())
             prev_book = book

    def test_default_sort(self):
        titles = self.data_source.books(None, "random_thing")
        prev_book = titles[0]
        for book in titles:
            self.assertLessEqual(prev_book.title.lower(), book.title.lower())
            prev_book = book.lower()

    def test_between_year_sort(self):
        years = self.data_source.books()
        prev_book = years[0]
        for book in years:
            self.assertLessEqual(book.year(),2010)
            self.assertGreaterEqual(book.year(),1937)
            self.assertLessEqual(prev_book.year(),book.year())
            if(prev_book.year() == book.year()):
                self.assertLessEqual(prev_book.title.lower(), book.title.lower())
                prev_book = book.lower()
            else:
                prev_book = book.lower()

    def test_year_sort(self):
        years = self.data_source.books()
        prev_book = years[0]
        for book in years:
            if(prev_book.year() == book.year()):
                self.assertLessEqual(prev_book.title.lower(), book.title.lower())
                prev_book = book.lower()
            else:
                prev_book = book.lower()

    def test_start_year_only_sort(self):
        years = self.data_source.books()
        prev_book = years[0]
        for book in years:
            self.assertGreaterEqual(book.year(),1939)
            self.assertLessEqual(prev_book.year(),book.year())
            if(prev_book.year() == book.year()):
                self.assertLessEqual(prev_book.title.lower(), book.title.lower())
                prev_book = book.lower()
            else:
                prev_book = book.lower()

    def test_end_year_only_sort(self):
        years = self.data_source.books()
        prev_book = years[0]
        for book in years:
            self.assertLessEqual(book.year(),2010)
            self.assertLessEqual(prev_book.year(),book.year())
            if(prev_book.year() == book.year()):
                self.assertLessEqual(prev_book.title.lower(), book.title.lower())
                prev_book = book.lower()
            else:
                prev_book = book.lower()

if __name__ == '__main__':
    unittest.main()

