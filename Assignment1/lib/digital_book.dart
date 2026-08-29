import 'book.dart';

class DigitalBook extends Book {
  double fileSizeMb;

  DigitalBook(String title, String author, this.fileSizeMb)
      : super(title, author);

  @override
  void showInfo() {
    super.showInfo();
    print('  File size: ${fileSizeMb}MB');
  }
}
