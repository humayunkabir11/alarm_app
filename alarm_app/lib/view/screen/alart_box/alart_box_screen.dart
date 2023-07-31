import 'package:alarm_app/utils/color.dart';
import 'package:alarm_app/view/screen/settings/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/button/custom_outline_button.dart';
import '../../widgets/small_text/custom_small_text.dart';

class AlertDialogBoxScreen extends StatelessWidget {
  const AlertDialogBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Are You Sure",
              style: GoogleFonts.urbanist(
                color: AppColors.blackColor,
                fontWeight: FontWeight.w700,
                fontSize: 28,
              )),
          const CustomSmallText(
            textColor: AppColors.grayTextColor,
            top: 10,
            bottom: 30,
            text:
                "Do You Really Want to Delete These records? This process Cannot be undone",
          ),

          // Delete And cancel button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomOutlineButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                buttonText: "Cancel",
                buttonTextColor: AppColors.blackColor,
                sizeBoxHeight: 40,
                sizeBoxWidth: 130,
                buttonBgColor: AppColors.ashColor,
                buttonTextFontSize: 16,
                buttonTextFontWeight: FontWeight.w600,
                borderRadius: 10,
                buttonIconSize: 0,
              ),
              CustomOutlineButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const SettingsScreen()));
                },
                buttonText: "Delete",
                buttonTextColor: AppColors.orangeButtonTextColor,
                sizeBoxHeight: 40,
                sizeBoxWidth: 130,
                buttonBgColor: AppColors.orangeButtonColor,
                buttonTextFontSize: 16,
                buttonTextFontWeight: FontWeight.w600,
                borderRadius: 10,
                buttonIconSize: 0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
