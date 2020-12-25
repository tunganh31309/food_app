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
        // cho thẻ Column, Alignment theo chiều X chiều Y dựa vào center
        children: <Widget>[
          //Now change font's family from "Google Fonts"
          Text(this.category.content,
              style: Theme.of(context)
                  .textTheme
                  .title), // bây giờ là font sunshiney
        ],
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [_color.withOpacity(0.8), _color],
              // Gradient là biến thiên biến đổi từ màu A => màu B
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
          color: _color,
          // màu color theo chiều bắt đầu topRight và kết thích là bottomLeft
          // _color là chủ dùng riêng trong class này
          borderRadius: BorderRadius.circular(20)),
      // BoxDecoration liên quan đến hình dáng container
    ));
  }
}
