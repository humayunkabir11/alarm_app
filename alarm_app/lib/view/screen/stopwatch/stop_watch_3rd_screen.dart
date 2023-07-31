import 'package:alarm_app/utils/color.dart';
import 'package:alarm_app/view/widgets/small_text/custom_small_text.dart';
import 'package:alarm_app/view/widgets/stop_watch/custom_stop_watch.dart';
import 'package:alarm_app/view/widgets/stop_watch/stop_watch_pause.dart';
import 'package:flutter/material.dart';

class StopWatch3rdScreen extends StatefulWidget {
  const StopWatch3rdScreen({super.key});

  @override
  State<StopWatch3rdScreen> createState() => _StopWatch3rdScreenState();
}

class _StopWatch3rdScreenState extends State<StopWatch3rdScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSmallText(
                    text: "Stop Watch",
                    textFondSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  Center(
                    child: CustomSmallText(
                      top: 50,
                      text: "00:07.00",
                      fontWeight: FontWeight.w600,
                      textFondSize: 48,
                    ),
                  ),
                  Center(
                    child: CustomSmallText(
                      text: "00:04.79",
                      textFondSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

             StopWatchPauseScreen(
               text1: "01",
               text2: "+00:04.79",
               text3: "00:04.79",
             ),
             SizedBox(height: 16,),
             StopWatchPauseScreen(
               text1: "02",
               text2: "+00:04.79",
               text3: "00:04.79",
             ),
             SizedBox(height: 16,),
             StopWatchPauseScreen(
               text1: "03",
               text2: "+00:04.79",
               text3: "00:04.79",
             ),


                ],
              ),

              // icon button
              CustomStopWatch(

                iconOnTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>const StopWatch3rdScreen()));},
                 containerColor: AppColors.blackColor,
                  iconContainerColor: AppColors.grayTextColor,
                // iconContainerHeight: 56,
                // iconContainerWidth: 100,
                // iconContainerRadius: 8,



              )
            ],
          ),
        ),
      ),
    );
  }
}
