import 'package:flutter/material.dart';
import 'package:food_app/models/category.dart';

class FoodsPage extends StatelessWidget {
  static const String routeName = '/FoodsPage'; // thêm thuộc tính
  Category category;
  FoodsPage({this.category});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Map<String, Category> arguments = ModalRoute.of(context).settings.arguments;
    this.category = arguments['category']; // tên của cái key
    //Filter foods of from category
    return Scaffold(
      appBar: AppBar(
        title: Text('Foods from ${category.content}'),
      ),
      body: Center(
        child: Text(
          'This show Foods\'s list',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
