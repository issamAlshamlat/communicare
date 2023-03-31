import 'package:communicare/theme/app_colors.dart';
import 'package:communicare/theme/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:communicare/theme/app_strings.dart';

class PainWidget extends StatefulWidget {
  @override
  _PainWidgetState createState() => _PainWidgetState();
}

class _PainWidgetState extends State<PainWidget> {
  var bodyImageName = AppIcons.male_front_side;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.all(screenHeight * 0.016),
      width: screenWidth * 0.26,
      decoration: BoxDecoration(
        color: AppColors.light_gray_color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppStrings.tap_where_it_hurts,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.text_gray_color,
              fontSize: screenWidth * 0.02,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Image.asset(
            bodyImageName,
            height: screenHeight * 0.65,
          ),
          SizedBox(height: screenHeight * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  // flex: 1,
                  child: Container(
                    height: screenHeight * 0.066,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.white_color,
                    ),
                    child: IconButton(
                      icon: Image.asset(AppIcons.clear_all),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  // flex: 1,
                  child: Container(
                    height: screenHeight * 0.066,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.white_color,
                    ),
                    child: IconButton(
                      icon: Image.asset(AppIcons.flip),
                      onPressed: () {
                        setState(() {
                          bodyImageName =
                              bodyImageName == AppIcons.male_back_side
                                  ? AppIcons.male_front_side
                                  : AppIcons.male_back_side;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          )
        ],
      ),
    );
  }
}
