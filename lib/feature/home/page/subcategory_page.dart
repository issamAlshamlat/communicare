import 'package:communicare/feature/home/widget/categories_widget.dart';
import 'package:communicare/feature/master/widget/search_bar_widget.dart';
import 'package:communicare/feature/master/widget/side_bar_widget.dart';
import 'package:communicare/feature/recent/page/recent_page.dart';
import 'package:flutter/material.dart';

class SubcategoryPage extends StatefulWidget {
  final List<String> itemsList;

  SubcategoryPage({required this.itemsList});

  @override
  State<SubcategoryPage> createState() => _SubcategoryPageState();
}

class _SubcategoryPageState extends State<SubcategoryPage> {
  int sideBarIndex = 0;

  Widget buildChildBasedOnIndex(int index) {
    switch (index) {
      case 0:
        Navigator.pop(context);
        return Container();
      case 1:
        return RecentPage();
      case 2:
        return Container(
          color: Colors.amberAccent,
        );
      default:
        return Container(
          color: Colors.red,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBarWidget(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SideBarWidget(),
                Expanded(
                  child: CategoriesWidget(
                    itemsList: widget.itemsList,
                    childAspectRatio: 4 / 1,
                    isForHome: false,
                    onEvent: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
