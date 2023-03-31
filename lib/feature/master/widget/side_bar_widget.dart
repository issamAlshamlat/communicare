import 'package:communicare/theme/app_colors.dart';
import 'package:communicare/theme/app_strings.dart';
import 'package:communicare/feature/master/widget/side_bar_item_widget.dart';
import 'package:communicare/theme/app_icons.dart';
import 'package:flutter/material.dart';

class SideBarWidget extends StatefulWidget {
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
  _SideBarWidgetState createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: AppColors.light_red_color,
      width: screenWidth * 0.11,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(0),
        shrinkWrap: true,
        itemCount: SideBarWidget.sideBarItemsList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: SideBarItem(
                context,
                index == selectedIndex
                    ? SideBarWidget.sideMenuDeselectedItemsList[index]
                    : SideBarWidget.sideMenuSelectedItemsList[index],
                SideBarWidget.sideBarItemsList[index],
                index == selectedIndex),
          );
        },
      ),
    );
  }
}
