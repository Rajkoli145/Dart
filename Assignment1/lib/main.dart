import 'book.dart';
import 'digital_book.dart';
import 'library.dart';
import 'book_utils.dart';

void main() {
  var library = Library('City Library');

  library.addBook(Book('Atomic Habits', 'James Clear'));
  library.addBook(Book('1984', 'George Orwell'));
  library.addBook(DigitalBook('Clean Code', 'Robert Martin', 4.5));

  library.showAllBooks();

  library.issueBook('1984');
  library.issueBook('1984');
  library.returnBook('The Hobbit');
  library.returnBook('1984');

  library.showAllBooks();

  print('\nAvailable books: ${countAvailableBooks(library.books)}');

  for (int i = 1; i <= 3; i++) {
    print('Library visit reminder #$i');
  }
}
