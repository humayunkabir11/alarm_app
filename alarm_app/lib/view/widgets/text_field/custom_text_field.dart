import 'package:alarm_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,

     this.label ="",
     this.labelColor = AppColors.blackColor,
     this.labelTextSize = 14,
      this.fontWidth = FontWeight.w600,
    this.hintColor = AppColors.blackColor,
    this.hintTextSize = 18,
    this.hintFontWeight = FontWeight.w600,
    this.hintText,
    this.icon ,
    this.iconColor,
    this.iconSize,

  });

  final  String label;
  final Color labelColor;
  final Color hintColor;
  final Color ?iconColor;
  final double labelTextSize;
  final double hintTextSize;
  final double ?iconSize;
  final FontWeight fontWidth;
  final FontWeight hintFontWeight;
  final String ? hintText;
  final IconData ? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:   InputDecoration(
        focusColor: AppColors.primaryColor,
        label:  Text(label,style: GoogleFonts.nunitoSans(color: AppColors.grayTextColor,fontSize: labelTextSize,fontWeight: fontWidth)),
        hintText: hintText,
        hintStyle: GoogleFonts.nunitoSans(color: hintColor,fontSize: hintTextSize,fontWeight: hintFontWeight,),
        suffixIcon: Icon(icon,size: iconSize,color: iconColor,),

        // hintText: "Test for now",
      ),
    );
  }
}
