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
        titles = self.small_data_source.books()
        prev_book = titles[0]
        for book in titles:
            self.assertLessEqual(prev_book.title.lower(), book.title.lower())
            prev_book = book.lower()

    def test_default_sort(self):
        titles = self.small_data_source.books(None, "random_thing")
        prev_book = titles[0]
        for book in titles:
            self.assertLessEqual(prev_book.title.lower(), book.title.lower())
            prev_book = book.lower()



if __name__ == '__main__':
    unittest.main()

