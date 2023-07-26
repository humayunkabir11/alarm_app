import 'package:alarm_app/utils/color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,

     this.label = "Alarm Name ",
     this.labelColor = AppColors.grayTextColor,
     this.labelTextSize = 14,
      this.fontWidth = FontWeight.w600

  });

  final  String label;
  final Color labelColor;
  final double labelTextSize;
  final FontWeight fontWidth;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:   InputDecoration(
        focusColor: AppColors.primaryColor,
        label:  Text(label),
        // hintText: "Test for now",
        labelStyle: TextStyle(color: AppColors.grayColor,fontSize: labelTextSize,fontWeight: fontWidth),
      ),
    );
  }
}
