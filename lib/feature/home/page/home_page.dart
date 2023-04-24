import 'package:communicare/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:communicare/theme/app_config.dart';
import 'package:communicare/theme/app_strings.dart';
import 'package:communicare/feature/home/widget/categories_widget.dart';
import 'package:communicare/feature/app_audio_player.dart';
import 'package:communicare/feature/home/widget/pain_widget.dart';

class HomePage extends StatefulWidget {
  final Function onAudioFinished;

  HomePage({required this.onAudioFinished});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AppAudioPlayer appAudioPlayer = AppAudioPlayer();

  void handleAudioDidfinishPlaying() {
    print('finished');
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Expanded(
      child: Row(
        children: [
          PainWidget(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: CategoriesWidget(
                    itemsList: AppConstants.categoriesList,
                    childAspectRatio: 3 / 1.1,
                    isForHome: true,
                    onEvent: widget.onAudioFinished,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(screenHeight * 0.016),
                  color: AppColors.white_color,
                  height: 105,
                  child: Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              appAudioPlayer.playAudio(
                                  fileName: AppStrings.thanks);
                            },
                            child: Text(
                              AppStrings.thanks,
                              style: TextStyle(
                                color: AppColors.black_color,
                                fontSize: screenWidth * 0.034,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
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
                            onPressed: () {
                              appAudioPlayer.playAudio(fileName: AppStrings.no);
                            },
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
                            onPressed: () {
                              appAudioPlayer.playAudio(
                                  fileName: AppStrings.yes);
                            },
                            child: Text(
                              AppStrings.yes,
                              style: TextStyle(
                                color: AppColors.black_color,
                                fontSize: screenWidth * 0.034,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              // fixedSize: Size(buttonsContainerWidth / 3.28, 105),
                              backgroundColor: AppColors.light_green_color,
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
    );
  }
}
