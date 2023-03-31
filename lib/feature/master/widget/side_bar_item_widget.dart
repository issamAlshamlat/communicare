import 'package:communicare/theme/app_config.dart';
import 'package:flutter/cupertino.dart';

Container SideBarItem(
    BuildContext context, String imageName, String title, bool isSelected) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;

  return Container(
    width: screenWidth * 0.12,
    height: screenHeight * 0.175,
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.white_color, width: 0.2),
      color: isSelected ? AppColors.white_color : AppColors.dark_green_color,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          imageName,
          width: screenWidth * 0.035,
          height: screenHeight * 0.05,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: screenWidth * 0.013,
            color: isSelected
                ? AppColors.side_menu_labels_color
                : AppColors.white_color,
          ),
        ),
      ],
    ),
  );
}
