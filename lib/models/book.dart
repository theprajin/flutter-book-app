class Book {
  final String title;
  final String description;
  final String imageUrl;
  final String genre;
  int rating;

  Book({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.genre,
    this.rating = 0,
  });
}
