import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
   // class CategoriesPage kế thừa từ thẻ  StatelessWidget
  // Vì trong này danh sách này không thêm sửa xóa
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: <Widget>[],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
// có một cái màn hình chứa các danh sách các categories , cái này nằm ngoài model, phần giao diện