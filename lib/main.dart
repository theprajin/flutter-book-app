import 'package:flutter/material.dart';

import './view/book_list_view.dart';
import './view/book_detail_view.dart';

void main() {
  runApp(const HomeView());
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        BookListView.routeName: (context) => const BookListView(),
        BookDetailView.routeName: (context) => BookDetailView(),
      },
    );
  }
}
