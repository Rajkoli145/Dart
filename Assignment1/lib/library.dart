import 'book.dart';

class Library {
  String name;
  List<Book> books = [];

  Library(this.name);

  void addBook(Book book) {
    books.add(book);
  }

  void issueBook(String title) {
    for (var book in books) {
      if (book.title == title) {
        if (book.isIssued) {
          print('$title is already issued');
        } else {
          book.isIssued = true;
          print('$title issued successfully');
        }
        return;
      }
    }
    print('Book not found');
  }

  void returnBook(String title) {
    for (var book in books) {
      if (book.title == title) {
        if (!book.isIssued) {
          print('$title was not issued');
        } else {
          book.isIssued = false;
          print('$title returned successfully');
        }
        return;
      }
    }
    print('Book not found');
  }

  void showAllBooks() {
    print('\n--- Books in $name ---');
    for (var book in books) {
      book.showInfo();
    }
  }
}
