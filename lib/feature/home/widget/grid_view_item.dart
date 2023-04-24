import 'package:communicare/constants/app_constants.dart';
import 'package:communicare/feature/home/models/category_model.dart';
import 'package:communicare/helpers/db/database_helper.dart';
import 'package:communicare/theme/app_colors.dart';
import 'package:communicare/theme/app_strings.dart';
import 'package:flutter/cupertino.dart';

class GridItemWidget extends StatefulWidget {
  final CategoryModel item;
  final int index;
  final bool selected;

  const GridItemWidget(
      {Key? key,
      required this.item,
      required this.index,
      required this.selected})
      : super(key: key);

  @override
  _GridItemWidgetState createState() => _GridItemWidgetState();
}

class _GridItemWidgetState extends State<GridItemWidget> {
  final DatabaseHelper db = DatabaseHelper.instance;
  // Color itemBackgroundColor = AppColors.white_color;
  // Color itemTextColor = AppColors.text_gray_color;

  String imageFullPath(String name) {
    print(AppConstants.categories_images_path + name.capitalize() + '.png');
    return AppConstants.categories_images_path + name.capitalize() + '.png';
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: widget.selected
            ? AppColors.dark_green_color
            : AppColors.white_color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imageFullPath(widget.item.title),
            width: screenWidth * 0.06,
            height: screenHeight * 0.08,
          ),
          SizedBox(width: 10.0),
          Container(
            child: Flexible(
              child: Text(
                widget.item.title,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: screenWidth * 0.021,
                  fontWeight: FontWeight.w600,
                  color: widget.selected
                      ? AppColors.white_color
                      : AppColors.black_color,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
