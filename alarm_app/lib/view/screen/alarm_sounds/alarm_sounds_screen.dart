import 'package:alarm_app/utils/color.dart';
import 'package:alarm_app/view/widgets/small_text/custom_small_text.dart';
import 'package:alarm_app/view/widgets/text_field/custom_text_field.dart';

import 'package:alarm_app/view/widgets/top_row/custom_top_row.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlarmSounds extends StatefulWidget {
  AlarmSounds({super.key});

  @override
  State<AlarmSounds> createState() => _AlarmSoundsState();
}

class _AlarmSoundsState extends State<AlarmSounds> {
  int groupValue = 0;

  void radio(value) {
    setState(() {
      groupValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(bottom: 40.0,left: 24,right: 24,),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTopRow(
                  text: "Alarm Sound",
                ),
                CustomTextField(
                  hintText: "Add New",
                  hintFontWeight: FontWeight.w600,
                  hintColor: AppColors.blackColor,
                  hintTextSize: 24,
                  icon: Icons.add,
                  iconColor: AppColors.blackColor,
                  iconSize: 24,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomSmallText(
                  top: 20,

                  text: "Sound Device",
                  textColor: AppColors.grayTextColor,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 67,
                            decoration: BoxDecoration(
                              color: AppColors.grayColor,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(
                              child: RadioListTile(
                                controlAffinity: ListTileControlAffinity.trailing,
                                title: const Text("Fast and Furious.mp3"),
                                activeColor: AppColors.primaryColor,
                                value: 0,
                                groupValue: groupValue,
                                onChanged: radio,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
