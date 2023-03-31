import 'package:communicare/feature/master/widget/categories_widget.dart';
import 'package:communicare/feature/master/widget/pain_widget.dart';
import 'package:communicare/feature/master/widget/search_bar_widget.dart';
import 'package:communicare/feature/master/widget/side_bar_widget.dart';
import 'package:communicare/theme/app_config.dart';
import 'package:flutter/material.dart';

class MasterPage extends StatelessWidget {
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
                PainWidget(),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(child: CategoriesWidget()),
                      Container(
                        color: AppColors.dark_green_color,
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
