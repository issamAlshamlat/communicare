import 'package:communicare/feature/master/widget/categories_widget.dart';
import 'package:communicare/feature/master/widget/pain_widget.dart';
import 'package:communicare/feature/master/widget/search_bar_widget.dart';
import 'package:communicare/feature/master/widget/side_bar_widget.dart';
import 'package:communicare/theme/app_config.dart';
import 'package:communicare/theme/app_strings.dart';
import 'package:flutter/material.dart';

class MasterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final buttonsContainerWidth = screenWidth -
        ((screenWidth * 0.26) + (screenWidth * 0.032) + (screenWidth * 0.12));

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
                        margin: EdgeInsets.all(screenHeight * 0.016),
                        // padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.016),
                        color: AppColors.white_color,
                        height: 105,
                        child: Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    AppStrings.thanks,
                                    style: TextStyle(
                                      color: AppColors.black_color,
                                      fontSize: screenWidth * 0.034,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    // fixedSize:Size(buttonsContainerWidth / 3.28, 105),
                                    backgroundColor: AppColors.gray_color,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    AppStrings.no,
                                    style: TextStyle(
                                      color: AppColors.black_color,
                                      fontSize: screenWidth * 0.034,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    // fixedSize:Size(buttonsContainerWidth / 3.28, 105),
                                    backgroundColor: AppColors.light_red_color,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    AppStrings.yes,
                                    style: TextStyle(
                                      color: AppColors.black_color,
                                      fontSize: screenWidth * 0.034,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    // fixedSize: Size(buttonsContainerWidth / 3.28, 105),
                                    backgroundColor:
                                        AppColors.light_green_color,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
