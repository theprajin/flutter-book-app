import 'package:flutter/material.dart';

import '../common_widgets/book_item_detail.dart';
import '../view/book_detail_view.dart';

import '../data/book_list.dart';

class BookListView extends StatelessWidget {
  static const routeName = '/';

  const BookListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Book App'),
        ),
      ),
      body: ListView.builder(
        itemCount: bookList.length,
        itemBuilder: ((context, index) {
          // return BookItemSimple(
          //   imageUrl: bookList[index].imageUrl,
          //   title: bookList[index].title,
          //   genre: bookList[index].genre,
          // );
          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(
                BookDetailView.routeName,
                arguments: {
                  'title': bookList[index].title,
                  'description': bookList[index].description,
                  'imageUrl': bookList[index].imageUrl,
                  'genre': bookList[index].genre,
                  'rating': bookList[index].rating,
                },
              );
            },
            child: BookItemDetail(
              title: bookList[index].title,
              description: bookList[index].description,
              imageUrl: bookList[index].imageUrl,
              genre: bookList[index].genre,
              rating: bookList[index].rating,
            ),
          );
        }),
      ),
    );
  }
}
