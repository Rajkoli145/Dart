import 'book.dart';

int countAvailableBooks(List<Book> books) {
  int count = 0;
  for (var book in books) {
    if (!book.isIssued) {
      count++;
    }
  }
  return count;
}
