import 'package:communicare/theme/app_config.dart';
import 'package:flutter/cupertino.dart';

Container SideBarItem(
    BuildContext context, String imageName, String title, bool isSelected) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;

  return Container(
    // width: screenWidth * 0.12,
    // height: screenHeight * 0.18,
    color: AppColors.dark_green_color,
    // color: isSelected ? AppColors.dark_green_color : AppColors.white_color,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          imageName,
          width: screenWidth * 0.034,
          height: screenHeight * 0.046,
        ),
        Text(title),
      ],
    ),
  );
}
