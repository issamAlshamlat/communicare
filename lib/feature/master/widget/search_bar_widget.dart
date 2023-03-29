import 'package:communicare/theme/app_config.dart';
import 'package:communicare/theme/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SearchBarWidget extends StatelessWidget {
  static DateTime now = DateTime.now();
  static String dayName = DateFormat('EEEE').format(now);
  static String monthName = DateFormat('MMMM').format(now);
  static String amPmIndicator = DateFormat('a').format(now);
  static bool isAm = amPmIndicator == 'AM';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: AppColors.light_gray_color,
      padding: EdgeInsets.all(screenHeight * 0.021),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(13, 8, 0, 0),
            child: Image.asset(
              AppIcons.app_logo,
              width: screenWidth * 0.083,
              height: screenHeight * 0.085,
            ),
          ),
          SizedBox(width: screenWidth * 0.03),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${dayName},${monthName},${DateTime.now().year}',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth * 0.02,
                    color: AppColors.text_gray_color,
                  ),
                ),
                SizedBox(height: screenHeight * 0.0132),
                Row(
                  children: [
                    Image.asset(
                      isAm ? AppIcons.sun_icon : AppIcons.moon_icon,
                      width: screenWidth * 0.031,
                      height: screenWidth * 0.031,
                    ),
                    SizedBox(width: 16),
                    Text(
                      'AT ${DateTime.now().hour}:${DateTime.now().minute} ${isAm ? 'Am' : 'PM'}',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.02,
                        color: AppColors.text_gray_color,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // SizedBox(width: 16),
          Expanded(
              child: Container(
            height: screenHeight * 0.12,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppIcons.keyboard_icon,
                  width: screenWidth * 0.046,
                  height: screenHeight * 0.043,
                ),
                SizedBox(
                    width:
                        8), // Adds 8 pixels of space between the image and the text field
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type to speak',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.0195,
                        color: AppColors.light_gray_color,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
