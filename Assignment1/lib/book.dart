class Book {
  String title;
  String author;
  bool isIssued;

  Book(this.title, this.author) : isIssued = false;

  void showInfo() {
    print('$title by $author - ${isIssued ? "Issued" : "Available"}');
  }
}
