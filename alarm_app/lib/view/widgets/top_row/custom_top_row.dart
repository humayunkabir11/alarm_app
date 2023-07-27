import 'package:alarm_app/utils/color.dart';
import 'package:alarm_app/view/widgets/small_text/custom_small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTopRow extends StatelessWidget {
  const CustomTopRow({
    super.key,
    this.onPressed,

    this.textColor = AppColors.blackColor,
    this.iconSize = 24,
    this.textFontSize = 18,
    this.textFontWidth = FontWeight.w600,
    this.text = "Alarm",
    this.iconColorLeft = AppColors.blackColor,
    this.iconColorRight= AppColors.blackColor
  });

  final VoidCallback? onPressed;

  final Color iconColorLeft;
  final Color iconColorRight;
  final Color textColor;
  final double iconSize;
  final double textFontSize;
  final FontWeight textFontWidth;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Row(
            children: [
              IconButton(
                  onPressed: onPressed,
                  icon: Icon(Icons.close_sharp,color: iconColorLeft),
                  iconSize: iconSize),

               CustomSmallText(
                text: text,
              )
            ],
          ),
        ),


        IconButton(
            onPressed: onPressed,
            icon:  Icon(Icons.check, color: iconColorRight,),

            iconSize: iconSize),
      ],
    );
  }
}
