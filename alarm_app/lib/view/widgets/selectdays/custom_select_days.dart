import 'package:alarm_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSelectdays extends StatelessWidget {
   CustomSelectdays({super.key,
     this.boxHeight = 60,
     this.containerWidth = 48,
     this.color = AppColors.primaryColor});


   final double boxHeight;
   final double containerWidth;
   final Color  color;

  List days = ["Mon","Tue","Wed"," Thu","Fri","Sat","Sun"];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: boxHeight,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount:  days.length,
          itemBuilder: (context , index)=> Container(
            width: containerWidth,
            margin: const EdgeInsetsDirectional.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: color,

            ),
            child: Center(child: Text(days[index],style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w600,fontSize: 14,color: AppColors.transparentColor),)),
          ) ),
    );
  }
}
