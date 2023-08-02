import 'package:alarm_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomAlarmSound extends StatelessWidget {
  const CustomAlarmSound({
    super.key,
    this.onTap ,
    this.topText = 'Alarm Sound' ,
    this.soundText = 'Fast and Furious.mp3',
    this.soundTextColor = AppColors.blackColor,
    this.iconBorderColor = AppColors.blackColor,
    this.iconBoxHeight = 24,
    this.iconBoxWidth = 24,
    this.icons = Icons.arrow_forward_ios_rounded,
    this.iconSize = 16,
    this.borderRadius = 8,
  });

  final VoidCallback? onTap;
  final String topText ;
  final String soundText ;
  final Color soundTextColor ;
  final Color iconBorderColor ;
  final double iconBoxHeight ;
  final double iconBoxWidth ;
  final IconData icons ;
  final double iconSize ;
  final double borderRadius ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin:  const EdgeInsets.symmetric(vertical: 24),
        decoration: const BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Colors.black12, width: 2))),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(topText,
                style: GoogleFonts.nunitoSans(
                  color: AppColors.grayTextColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                soundText,
                style: GoogleFonts.nunitoSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: soundTextColor,
                ),
              ),
            )
          ]),
          Container(
            height: iconBoxHeight,
            width: iconBoxWidth,
            decoration: BoxDecoration(
                border: Border.all(color: iconBorderColor),
                borderRadius: BorderRadius.circular(borderRadius)),
            child: Center(
              child: Icon(
                icons,
                size: iconSize,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
