import 'package:flutter/material.dart';
import 'package:food_app/category_item.dart';
import 'package:food_app/fake_data.dart';

class CategoriesPage extends StatelessWidget {
  // class CategoriesPage kế thừa từ thẻ  StatelessWidget
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
      // GridView là theo dạng lưới , list của mình theo chiều ngang và chiều dọc
      padding: EdgeInsets.all(12),
      children: FAKE_CATEGORIES
          .map((eachCategory) => CategoryItem(category: eachCategory))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300, // chiều rộng max
          childAspectRatio: 3 / 2, // tỉ lệ giữa chiều rộng chia chiều cao
          crossAxisSpacing: 12, // độ rộng các lưới theo chiều dọc chiều ngang
          mainAxisSpacing: 12),
    );
  }
}
