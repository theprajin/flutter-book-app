import 'package:flutter/material.dart';

class BookItemSimple extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String genre;

  const BookItemSimple({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.genre,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
              child: Image.network(
                height: 200,
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 17,
            ),
          ),
          Text(
            genre,
            style: TextStyle(
              fontSize: 17,
              color: Colors.blue.shade400,
            ),
          ),
        ],
      ),
    );
  }
}
