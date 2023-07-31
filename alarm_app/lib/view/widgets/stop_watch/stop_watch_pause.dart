import 'package:flutter/cupertino.dart';

import '../../../utils/color.dart';
import '../small_text/custom_small_text.dart';

class StopWatchPauseScreen extends StatelessWidget {
  const StopWatchPauseScreen({super.key,
    this.text1 = "01",
    this.color1 = AppColors.blackColor,
    this.text2  = "",
    this.text3 = "",

    this.color2 = AppColors.grayTextColor,
    this.color3 =AppColors.blackColor,
  });


  final String text1;
  final String text2;
  final String text3;
  final Color color1;
  final Color color2;
  final Color color3;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      decoration:  BoxDecoration(
        color: AppColors.ashColor,
        borderRadius:  BorderRadius.circular(20),

      ),
      child:   Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomSmallText(
            text:text1,
            textColor: color1
          ),
          CustomSmallText(
            text: text2,
            textColor: color2,
          ),
          CustomSmallText(
            text: text3,
            textColor: color3,
          ),
        ],
      ),
    );
  }
}
