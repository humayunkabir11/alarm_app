import 'package:alarm_app/utils/color.dart';
import 'package:alarm_app/utils/model/model.dart';
import 'package:alarm_app/view/widgets/container/custom_container.dart';
import 'package:alarm_app/view/widgets/small_text/custom_small_text.dart';
import 'package:alarm_app/view/widgets/sound_Container/custom_alarm_sound.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {

    var value = 0.7;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomSmallText(
                  text: "Settings",
                  textFondSize: 18,
                  top: 20,
                  bottom: 16,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: settingSName.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(top: 28),
                      padding: const EdgeInsetsDirectional.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.grayColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child:
                      settingSName[index].subText == ""?
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start ,
                        children: [
                          Icon(settingSName[index].icon, size: 18),
                          const SizedBox(width: 8),
                          Text(
                            "${settingSName[index].settingNameText}",
                            style: GoogleFonts.nunitoSans(
                                color: AppColors.blackColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ):
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start ,
                        children: [
                          Icon(settingSName[index].icon, size: 18),
                          const SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${settingSName[index].settingNameText}",
                                style: GoogleFonts.nunitoSans(
                                    color: AppColors.blackColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "${settingSName[index].subText}",
                                style: GoogleFonts.nunitoSans(
                                    color: AppColors.blackColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16,),
                Container(

                  decoration: BoxDecoration(
                    color: AppColors.grayColor,
                    borderRadius: BorderRadius.circular(16),

                  ),

                  child:   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    const CustomSmallText(
                      text: "Alarm Volume",
                      top: 16,
                      left: 12,
                      textColor: AppColors.grayTextColor,
                      textFondSize: 16,
                    ),
                    Slider(

                      max: 1,
                      value: value,
                      onChanged: (value){
                       value=value;
                      },
                    ),


                  ]),


                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
