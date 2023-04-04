import 'package:communicare/constants/app_enums.dart';
import 'package:communicare/feature/app_shared_preferences.dart';
import 'package:communicare/theme/app_colors.dart';
import 'package:communicare/theme/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:communicare/theme/app_strings.dart';
import 'dart:ui' as ui;
import 'dart:typed_data';

class PainWidget extends StatefulWidget {
  @override
  _PainWidgetState createState() => _PainWidgetState();
}

class _PainWidgetState extends State<PainWidget> {
  final gender = AppSharedPreferences().getGender();
  List<Widget> _circularContainers = [];

  var bodyImageName = AppSharedPreferences().getGender() == Gender.Man
      ? AppIcons.male_front_side
      : AppIcons.female_front_side;

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
      child: Stack(
        children: [
          Column(
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
              GestureDetector(
                onTapDown: (details) {
                  setState(() {
                    final touchPosition = details.localPosition;

                    final Offset globalPosition = details.globalPosition;
                    final RenderBox box =
                        context.findRenderObject() as RenderBox;
                    final Offset localPosition =
                        box.globalToLocal(globalPosition);

                    final newCircularContainer = Positioned(
                      left: touchPosition.dx + 30,
                      top: touchPosition.dy + 30,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            'Label',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    );

                    _circularContainers.add(newCircularContainer);
                  });
                },
                child: Image.asset(
                  bodyImageName,
                  height: screenHeight * 0.65,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: screenHeight * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.white_color,
                        ),
                        child: IconButton(
                          icon: Image.asset(AppIcons.clear_all),
                          onPressed: () {
                            setState(() {
                              _circularContainers.clear();
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: screenHeight * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.white_color,
                        ),
                        child: IconButton(
                          icon: Image.asset(AppIcons.flip),
                          onPressed: () {
                            setState(() {
                              bodyImageName = gender == Gender.Man
                                  ? bodyImageName == AppIcons.male_back_side
                                      ? AppIcons.male_front_side
                                      : AppIcons.male_back_side
                                  : bodyImageName == AppIcons.female_front_side
                                      ? AppIcons.female_back_side
                                      : AppIcons.female_front_side;
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
          ..._circularContainers,
        ],
      ),
    );
  }
}
