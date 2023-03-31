import 'package:communicare/feature/master/models/grid_item_model.dart';
import 'package:communicare/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';

class GridItemWidget extends StatefulWidget {
  final GridItemModel item;

  const GridItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  _GridItemWidgetState createState() => _GridItemWidgetState();
}

class _GridItemWidgetState extends State<GridItemWidget> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.dark_green_color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      // margin: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              widget.item.imageName,
              width: screenWidth * 0.06,
              height: screenHeight * 0.08,
            ),
          ),
          SizedBox(width: 10.0),
          Text(
            widget.item.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: screenWidth * 0.0156,
                fontWeight: FontWeight.bold,
                color: AppColors.white_color),
          ),
        ],
      ),
    );
  }
}
