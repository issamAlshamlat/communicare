import 'package:communicare/feature/master/widget/search_bar_widget.dart';
import 'package:communicare/feature/master/widget/side_bar_widget.dart';
import 'package:communicare/theme/app_config.dart';
import 'package:flutter/cupertino.dart';
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SideBarWidget(),
                Expanded(
                    child: Container(
                  color: AppColors.gray_color,
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
