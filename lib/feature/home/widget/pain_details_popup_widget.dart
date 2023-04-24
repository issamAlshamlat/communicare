import 'package:communicare/theme/app_config.dart';
import 'package:communicare/theme/app_strings.dart';
import 'package:flutter/material.dart';

class PainDetailsPopupWidget extends StatefulWidget {
  @override
  _PainDetailsPopupWidgetState createState() => _PainDetailsPopupWidgetState();
}

class _PainDetailsPopupWidgetState extends State<PainDetailsPopupWidget> {
  int _selectedIntensity = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.grey.withOpacity(0.5),
      margin: EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white_color,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(16),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: AppColors.medium_gray_color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PAIN TYPE',
                      style: TextStyle(
                        fontSize: screenWidth * 0.02,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 16),
                    GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 5,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 2.5,
                      children: List.generate(
                        10,
                        (index) => Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                              color: AppColors.dark_green_color,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'Pain ${index + 1}',
                              style: TextStyle(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: AppColors.medium_gray_color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PAIN INTENSITY',
                      style: TextStyle(
                        fontSize: screenWidth * 0.02,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF54FD0B),
                            Color(0xFFE9F307),
                            Color(0xFFFEBA03),
                            Color(0xFFFF8280),
                            Color(0xFFFF3F2A),
                          ],
                          stops: [
                            0.1,
                            0.3,
                            0.5,
                            0.7,
                            0.9,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedIntensity = index;
                              });
                            },
                            child: Container(
                              width: (MediaQuery.of(context).size.width - 110) /
                                  10,
                              height: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: _selectedIntensity == index
                                    ? null
                                    : AppColors.white_color.withOpacity(0.8),
                                borderRadius: (index == 0)
                                    ? BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      )
                                    : (index == 9)
                                        ? BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          )
                                        : BorderRadius.zero,
                              ),
                              child: Text(
                                '${index + 1}',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.black_color,
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Container(
                            // margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            width: 1,
                            height: 50,
                            color: Colors.black,
                          );
                        },
                        itemCount: 10,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          color: AppColors.dark_gray_color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            AppStrings.back,
                            style: TextStyle(
                              fontSize: screenWidth * 0.034,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          color: AppColors.light_green_color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            AppStrings.save,
                            style: TextStyle(
                              fontSize: screenWidth * 0.034,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
