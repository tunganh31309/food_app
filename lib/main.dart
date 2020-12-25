import 'package:flutter/material.dart';
import 'package:food_app/categories_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App with Navigation',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
          appBar: AppBar(
//          centerTitle: false,
            title: const Text('Food\'s categories'),
          ),
          body: SafeArea(
            // SafeArea khỏi bị xòe
            child: CategoriesPage(),
          ) // trang hiện danh sách category
          ),
    );
  }
}
