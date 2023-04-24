import 'package:communicare/feature/home/widget/categories_widget.dart';
import 'package:flutter/cupertino.dart';

class RecentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CategoriesWidget(
        itemsList: ['emotions', 'emotions', 'emotions', 'emotions', 'emotions'],
        childAspectRatio: 4 / 1,
        isForHome: false,
        onEvent: () {},
      ),
    );
  }
}
