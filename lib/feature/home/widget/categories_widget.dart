import 'package:communicare/feature/app_audio_player.dart';
import 'package:communicare/feature/home/models/category_model.dart';
import 'package:communicare/feature/home/widget/grid_view_item.dart';
import 'package:communicare/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {
  final List<String> itemsList;
  final double childAspectRatio;
  final AppAudioPlayer appAudioPlayer = AppAudioPlayer();
  final bool isForHome;
  final Function onEvent;

  CategoriesWidget(
      {required this.itemsList,
      required this.childAspectRatio,
      required this.isForHome,
      required this.onEvent});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  int _selectedItemIndex = -1;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
        decoration: BoxDecoration(
          color: AppColors.light_gray_color,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(screenHeight * 0.016),
        padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.025),
        child: GridView.builder(
          itemCount: widget.itemsList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: widget.childAspectRatio,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                if (widget.isForHome) {
                  print('categories Widget');
                  widget.onEvent;
                }
                widget.appAudioPlayer
                    .playAudio(fileName: widget.itemsList[index]);
                setState(() {
                  _selectedItemIndex = index;
                });
              },
              child: GridItemWidget(
                  index: index,
                  selected: _selectedItemIndex == index,
                  item: CategoryModel(
                    title: widget.itemsList[index],
                  )),
            );
          },
        ));
  }
}
