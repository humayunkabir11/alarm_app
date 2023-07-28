import 'package:alarm_app/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSmallText extends StatelessWidget {
  const CustomSmallText({super.key,
    this.text = "Alarm",
    this.textColor= AppColors.blackColor,
    this.fontWeight = FontWeight.w600,
    this.textFondSize =14,
    this.top = 0.0,
    this.left = 0,
    this.right = 0 ,
    this.bottom = 0,

  });
final String text;
final Color textColor;
final FontWeight fontWeight;
final double top;
final double left;
final double right;
final double bottom;
final double textFondSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only (top:top,left: left,right: right,bottom: bottom),
      child: Text(
        text,style: GoogleFonts.nunitoSans(color: textColor,fontSize: textFondSize,fontWeight: fontWeight)
      ),
    );
  }
}
