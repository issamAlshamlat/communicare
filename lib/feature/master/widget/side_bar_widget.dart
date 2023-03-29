import 'package:communicare/constants/app_strings.dart';
import 'package:communicare/feature/master/widget/side_bar_item_widget.dart';
import 'package:communicare/theme/app_icons.dart';
import 'package:flutter/material.dart';

class SideBarWidget extends StatelessWidget {
  static final List<String> sideBarItemsList = [
    AppStrings.home,
    AppStrings.recent,
    AppStrings.patient_log,
    AppStrings.settings,
    AppStrings.feedback
  ];

  static final List<String> sideMenuSelectedItemsList = [
    AppIcons.home_selected,
    AppIcons.recent_selected,
    AppIcons.patient_log_selected,
    AppIcons.settings_selected,
    AppIcons.feedback_selected
  ];

  static final List<String> sideMenuDeselectedItemsList = [
    AppIcons.home_deselected,
    AppIcons.recent_deselected,
    AppIcons.patient_log_deselected,
    AppIcons.settings_deselected,
    AppIcons.feedback_deselected
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: sideBarItemsList.length,
        itemBuilder: (BuildContext context, int index) {
          return SideBarItem(context, sideMenuDeselectedItemsList[index],
              sideBarItemsList[index]);
        },
      ),
    );
  }
}
