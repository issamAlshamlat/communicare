import 'package:communicare/constants/app_constants.dart';
import 'package:communicare/theme/app_colors.dart';
import 'package:communicare/feature/master/widget/side_bar_item_widget.dart';
import 'package:flutter/material.dart';

class SideBarWidget extends StatefulWidget {
  final Function(int) onItemSelected;
  SideBarWidget({required this.onItemSelected});

  @override
  _SideBarWidgetState createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {
  int selectedIndex = 0;

  BorderRadius getBorderRadius(int index) {
    if (index == selectedIndex) {
      return BorderRadius.only(
        topLeft: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      );
    } else if (index == selectedIndex + 1) {
      return BorderRadius.only(
        topRight: Radius.circular(20),
      );
    } else if (index == selectedIndex - 1) {
      return BorderRadius.only(
        bottomRight: Radius.circular(20),
      );
    } else {
      return BorderRadius.zero;
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: AppColors.light_gray_color,
      width: screenWidth * 0.11,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              children: [
                Container(
                  width: screenWidth * 0.055,
                  color: AppColors.dark_green_color,
                ),
                Container(
                  width: screenWidth * 0.055,
                  color: AppColors.white_color,
                ),
              ],
            ),
          ),
          Container(),
          ListView.builder(
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(0),
            shrinkWrap: true,
            itemCount: AppConstants.sideBarItemsList.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                    widget.onItemSelected(index);
                  });
                },
                child: SideBarItem(
                    context,
                    index == selectedIndex
                        ? AppConstants.sideMenuDeselectedItemsList[index]
                        : AppConstants.sideMenuSelectedItemsList[index],
                    AppConstants.sideBarItemsList[index],
                    index == selectedIndex,
                    getBorderRadius(index)),
              );
            },
          ),
        ],
      ),
    );
  }

}
