import 'package:communicare/feature/home/page/home_page.dart';
import 'package:communicare/feature/home/widget/pain_widget.dart';
import 'package:communicare/feature/master/widget/search_bar_widget.dart';
import 'package:communicare/feature/master/widget/side_bar_widget.dart';
import 'package:communicare/feature/recent/page/recent_page.dart';
import 'package:communicare/theme/app_strings.dart';
import 'package:communicare/feature/home/widget/categories_widget.dart';
import 'package:communicare/feature/app_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:communicare/theme/app_config.dart';

class MasterPage extends StatefulWidget {
  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  int sideBarIndex = 0;
  final AppAudioPlayer appAudioPlayer = AppAudioPlayer();

  Widget buildChildBasedOnIndex(int index) {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return RecentScreen();
      case 2:
        return Container(
          color: Colors.amberAccent,
        );
      default:
        return Container(
          color: Colors.red,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

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
                SideBarWidget(onItemSelected: (index) {
                  setState(() {
                    sideBarIndex = index;
                  });
                }),
                buildChildBasedOnIndex(sideBarIndex),
                // Row(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
