import 'package:flutter/material.dart';
import 'package:food_app/models/category.dart';

class CategoryItem extends StatelessWidget {
  //1 categoryItem - 1 category object
  //  1 cái categoryItem tương ứng với 1 một object
  Category category;
  CategoryItem({this.category}); // Định nghĩa thuộc tính Category
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color _color = this.category.color;
    return Container(
        child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(this.category.content,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ],
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [_color.withOpacity(0.8), _color],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
          color: _color,
          borderRadius: BorderRadius.circular(20)),
    ));
  }
}
