import 'package:alarm_app/utils/color.dart';
import 'package:alarm_app/view/screen/home/home_screen.dart';
import 'package:alarm_app/view/widgets/button/custom_outline_button.dart';
import 'package:alarm_app/view/widgets/selectdays/custom_select_days.dart';
import 'package:alarm_app/view/widgets/sound_Container/custom_alarm_sound.dart';
import 'package:alarm_app/view/widgets/text_field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../alarm_list/alarm_list_screen.dart';

class AlarmCreation extends StatefulWidget {
  const AlarmCreation({super.key});

  @override
  State<AlarmCreation> createState() => _AlarmCreationState();
}

class _AlarmCreationState extends State<AlarmCreation> {

  late PageController pageController;
  int selectedIndex = 0;

  var days = ["Mon","Tue","Wed","Thus","Fri","Sat","Sun"];

  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.8);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        automaticallyImplyLeading: false,
        // toolbarHeight: 50,
        // toolbarOpacity: 1,
        centerTitle: true,

         leading: IconButton(
           icon: Icon(Icons.arrow_back),
           onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
           },
         ),
        title: Text("Alarm App"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                color: Colors.grey.withOpacity(0.5),
                padding: const EdgeInsetsDirectional.symmetric(vertical: 10, horizontal: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: 40.h, width: 200.h,
                        color: Colors.black,
                      ),
                    ),

                  ],
                ),
              ),

               // middle row
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Repeat',style: TextStyle(color: Colors.black,fontSize: 18),),
                  Text("Weekend",style: TextStyle(color: Color(0xff8D93A3),fontSize: 14)),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomSelectdays(),

              // Alarm name field
               const CustomTextField(
                label: "Alarm Name",
                labelColor: AppColors.blackColor,
              ),

               SizedBox(height: 10,),

               //Alarm  Sound select
               const CustomAlarmSound(),
              const SizedBox(height: 16,),
              Text("Alarm Volume"),
              const SizedBox(height: 16,),
              const LinearProgressIndicator(
                backgroundColor: Color(0xffF5F5F5),value: 0.7,
                minHeight: 5,
              ),
             const SizedBox(height: 20,),
            //  Elevated Button
             CustomOutlineButton(

               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (_)=>AlarmListScreen()));

             },
             sizeBoxWidth: MediaQuery.of(context).size.width,
             buttonText: "Add Alarm",buttonIconSize: 0,
              )
            ],
          ),
        ),
      ),

    );
  }
}