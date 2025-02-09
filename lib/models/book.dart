class Book {
  final String title;
  final String author;

  Book({required this.title, required this.author});

  factory Book.fromMap(Map<String, dynamic> data) {
    return Book(
      title: data['title'] ?? 'Без названия',
      author: data['author'] ?? 'Неизвестный автор',
    );
  }
}
