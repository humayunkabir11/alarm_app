import 'package:alarm_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer(
      {super.key,
      this.bgColor = AppColors.yellowColor,
      this.timeTextColor = AppColors.blackColor,
      this.amTExtColor = AppColors.blackColor,
      this.topTxt = "WeekEnds",
      this.timeText = "10:00",
      this.amText = "Am",
      this.bottomText = "Need to go gym for exercise",
      this.topTextSize = 14,
      this.timeTextSize = 32,
      this.amTextSize = 12,
      this.dotHeight = 10,
      this.dotWidth = 10,
      this.bottomTextSize = 16,
      this.topTextPadding = 7,
      this.topTextColor = AppColors.blackColor,
      this.onTap,
      this.onLongPress,
      this.boxHeight = 20});

  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  final Color bgColor;
  final Color timeTextColor;
  final Color topTextColor;
  final Color amTExtColor;

  final String topTxt;
  final String timeText;
  final String amText;
  final String bottomText;
  final double bottomTextSize;
  final double topTextPadding;

  final double topTextSize;
  final double timeTextSize;
  final double amTextSize;
  final double dotHeight;
  final double dotWidth;
  final double boxHeight;

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  bool isSwitch = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onLongPress: widget.onLongPress,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black38),
          color: widget.bgColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: widget.dotHeight,
                      width: widget.dotWidth,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: widget.topTextPadding),
                      child: Text(
                        widget.topTxt,
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.w400,
                            fontSize: widget.topTextSize,
                            color: widget.topTextColor),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: widget.timeText,
                      style: GoogleFonts.urbanist(
                          fontSize: widget.timeTextSize,
                          color: widget.timeTextColor,
                          fontWeight: FontWeight.w600)),
                  TextSpan(
                    text: widget.amText,
                    style: GoogleFonts.nunitoSans(
                        fontSize: widget.amTextSize,
                        color: widget.amTExtColor,
                        fontWeight: FontWeight.w600),
                  ),
                ])),
                Text(
                  widget.bottomText,
                  style: GoogleFonts.nunitoSans(
                      fontSize: widget.bottomTextSize,
                      color: widget.amTExtColor,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: widget.boxHeight,
              child: widget.boxHeight == 20? Switch(
                  value: isSwitch,
                  onChanged: (value) {
                    setState(() {
                      isSwitch = !isSwitch;
                    });
                  }) : Checkbox(

                activeColor: AppColors.blackColor,
                  value: isSwitch,
                  onChanged: (value) {
                    setState(() {
                      isSwitch = !isSwitch;
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
