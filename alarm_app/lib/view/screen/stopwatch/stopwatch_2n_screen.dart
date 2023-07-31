import 'package:alarm_app/utils/color.dart';
import 'package:alarm_app/view/screen/stopwatch/stop_watch_3rd_screen.dart';
import 'package:alarm_app/view/widgets/small_text/custom_small_text.dart';
import 'package:alarm_app/view/widgets/stop_watch/custom_stop_watch.dart';
import 'package:flutter/material.dart';

class StopWatch2ndScreen extends StatefulWidget {
  const StopWatch2ndScreen({super.key});

  @override
  State<StopWatch2ndScreen> createState() => _StopWatch2ndScreenState();
}

class _StopWatch2ndScreenState extends State<StopWatch2ndScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0,horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSmallText(text: "Stop Watch",
                    textFondSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  Center(
                    child: CustomSmallText(
                      top: 50,
                      text: "00:04.79",
                      fontWeight: FontWeight.w600,
                      textFondSize: 48,
                    ),
                  ),
                  Center(
                    child: CustomSmallText(text: "00:04.79",
                      textFondSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              CustomStopWatch(iconOnTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>const StopWatch3rdScreen()));},
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const StopWatch3rdScreen()));
                },
              containerColor: AppColors.blackColor,
              )

            ],
          ),
        ),
      ),
    );
  }
}
