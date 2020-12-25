import 'package:flutter/material.dart';
import 'package:food_app/fake_data.dart';
import 'package:food_app/models/category.dart';
import 'package:food_app/models/food.dart';

class FoodsPage extends StatelessWidget {
  static const String routeName = '/FoodsPage'; // thêm thuộc tính
  Category category;
  FoodsPage({this.category});
  @override
  Widget build(BuildContext context) {
    //
    Map<String, Category> arguments = ModalRoute.of(context).settings.arguments;
    this.category = arguments['category']; // tên của cái key
    //Filter foods of from category
    List<Food> foods = FAKE_FOODS
        .where((food) => food.categoryId == this.category.id)
        .toList(); // điều kiện thỏa mãn để lôi
    return Scaffold(
      appBar: AppBar(
        title: Text('Foods from ${category.content}'),
      ),
      body: Center(
          child: Center(
        child: ListView.builder(itemBuilder: (context, index) {}),
      )),
    );
  }
}
