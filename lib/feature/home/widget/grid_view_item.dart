import 'package:communicare/feature/master/models/grid_item_model.dart';
import 'package:communicare/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:communicare/feature/app_audio_player.dart';

class GridItemWidget extends StatefulWidget {
  final GridItemModel item;

  const GridItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  _GridItemWidgetState createState() => _GridItemWidgetState();
}

class _GridItemWidgetState extends State<GridItemWidget> {
  final AppAudioPlayer appAudioPlayer = AppAudioPlayer();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        print('tapped!!!');
        appAudioPlayer.playAudio(fileName: widget.item.title);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: AppColors.white_color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        // margin: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              widget.item.imageName,
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
                    color: AppColors.text_gray_color,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
