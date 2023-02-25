import 'dart:ui';

import 'package:flutter/material.dart';

class BookDetailView extends StatelessWidget {
  // final String title;
  // final String description;
  // final String imageUrl;
  // final String genre;
  // final int rating;

  static const routeName = '/book-detail';

  const BookDetailView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map;
    final title = routeArgs['title'];
    final description = routeArgs['description'];
    final imageUrl = routeArgs['imageUrl'];
    final genre = routeArgs['genre'];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Image.network(
                  imageUrl,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            title,
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 15),
                      child: Text(
                        'Genre: $genre',
                        style: TextStyle(
                          color: Colors.blue.shade400,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
