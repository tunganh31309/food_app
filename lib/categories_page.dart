import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  // class CategoriesPage kế thừa từ thẻ  StatelessWidget
  // Vì trong này danh sách này không thêm sửa xóa
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: <Widget>[],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300, // chiều rộng max
          childAspectRatio: 3 / 2, // tỉ lệ giữa chiều rộng chia chiều cao
          crossAxisSpacing: 10, // độ rộng các lưới theo chiều dọc chiều ngang
          mainAxisSpacing: 10),
    );
  }
}
// có một cái màn hình chứa các danh sách các categories , cái này nằm ngoài model, phần giao diện
