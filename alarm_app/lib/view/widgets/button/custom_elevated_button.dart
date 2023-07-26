import 'package:alarm_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key,
  this.onPressed,
  this.buttonText = "Add Alarm",
  this.sizeBoxHeight = 60,
  this.sizeBoxWidth ,
  this.borderRadius = 5,
  this.buttonTextFontWeight = FontWeight.w600,
  this.buttonTextFontSize = 16,
  this.buttonBgColor = Colors.black
  });



  final VoidCallback ?onPressed;
  final String buttonText;
  final  double sizeBoxHeight;
  final  double ?sizeBoxWidth;
  final  double borderRadius;
  final  FontWeight buttonTextFontWeight;
  final  double buttonTextFontSize;
  final  Color buttonBgColor;


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: sizeBoxHeight,
      width: sizeBoxWidth,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              backgroundColor: buttonBgColor,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              )
          ),
          onPressed: onPressed,
          child: Text(buttonText,style: GoogleFonts.nunitoSans(
            color: AppColors.transparentColor,
            fontWeight: buttonTextFontWeight,
            fontSize: buttonTextFontSize
          ))),
    );
  }
}
