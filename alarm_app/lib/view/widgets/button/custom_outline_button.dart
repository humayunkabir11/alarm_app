import 'package:alarm_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton(
      {super.key,
      this.onPressed,
      this.buttonText = "",
      this.sizeBoxHeight = 60,
      this.sizeBoxWidth,
      this.borderRadius = 5,
      this.buttonTextFontWeight = FontWeight.w600,
      this.buttonTextFontSize = 16,
      this.buttonBgColor = Colors.black,
      this.buttonIcon,
      this.iconColor = Colors.white,
        this.buttonIconSize = 24,
        this.buttonTextColor = AppColors.transparentColor

      });

  final VoidCallback? onPressed;
  final String buttonText;
  final double sizeBoxHeight;
  final double? sizeBoxWidth;
  final double borderRadius;
  final FontWeight buttonTextFontWeight;
  final double buttonTextFontSize;
  final double buttonIconSize;
  final Color buttonBgColor;
  final Color buttonTextColor;
  final IconData ?buttonIcon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeBoxHeight,
      width: sizeBoxWidth,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: buttonBgColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            )),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(buttonIcon, size: buttonIconSize, color: Colors.white),
            Text(
              buttonText,
              style: GoogleFonts.nunitoSans(
                    color: buttonTextColor,
                    fontWeight: buttonTextFontWeight,
                    fontSize: buttonTextFontSize),
            ),
          ],
        ),
      ),
    );
  }
}
