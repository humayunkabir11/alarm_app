import 'package:alarm_app/utils/color.dart';
import 'package:alarm_app/view/widgets/small_text/custom_small_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMiddleRow extends StatelessWidget {
  const CustomMiddleRow({super.key,

    this.text1Color = AppColors.blackColor,
    this.textFontSize =18,
    this.textFontWidth = FontWeight.w600,
    this.text1 = "Repeat",
    this.text2 = "day",

  });
  final Color text1Color;
  final double textFontSize;
  final FontWeight textFontWidth;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomSmallText(
          fontWeight: textFontWidth,
           text: text1,
          textColor: text1Color,
          textFondSize: textFontSize,
        ),
        CustomSmallText(
         text: text2,
        )
      ],
    );
  }
}
