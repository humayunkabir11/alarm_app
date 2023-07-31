
import 'package:alarm_app/view/screen/stopwatch/stopwatch_2n_screen.dart';
import 'package:alarm_app/view/widgets/small_text/custom_small_text.dart';
import 'package:alarm_app/view/widgets/stop_watch/custom_stop_watch.dart';
import 'package:flutter/material.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Scaffold(
         body: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 25),
           child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment:  CrossAxisAlignment.start,
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
                      text: "00:00:00",
                      fontWeight: FontWeight.w600,
                      textFondSize: 48,
                    ),
              ),
                 ],
               ),
              CustomStopWatch(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const StopWatch2ndScreen()));
                },
              )
            ],
           ),
         ),
      ),
    );
  }
}

