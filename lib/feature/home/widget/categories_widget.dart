import 'package:communicare/constants/app_constants.dart';
import 'package:communicare/feature/master/models/grid_item_model.dart';
import 'package:communicare/feature/home/widget/grid_view_item.dart';
import 'package:communicare/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
        decoration: BoxDecoration(
          color: AppColors.light_gray_color,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(screenHeight * 0.016),
        padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.025),
        child: GridView.builder(
          itemCount: AppConstants.categoriesList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 1.1,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GridItemWidget(
                item: GridItemModel(
                    title: AppConstants.categoriesList[index],
                    imageName: AppConstants.categories_images_path +
                        AppConstants.categoriesList[index].toLowerCase() +
                        '.png'));
          },
        ));
  }
}
