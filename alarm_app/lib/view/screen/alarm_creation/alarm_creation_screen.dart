import 'package:alarm_app/view/screen/alarm/alarm_list_screen.dart';
import 'package:alarm_app/view/screen/home/home_screen.dart';
import 'package:alarm_app/view/widgets/button/custom_elevated_button.dart';
import 'package:alarm_app/view/widgets/sound_Container/custom_alarm_sound.dart';
import 'package:alarm_app/view/widgets/text_field/custom_text_field.dart';
import 'package:flutter/material.dart';

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
                        height: 40, width: 200,
                        color: Colors.black,
                      ),
                    ),

                  ],
                ),
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Repeat',style: TextStyle(color: Colors.black,fontSize: 18),),
                  Text("Weekend",style: TextStyle(color: Color(0xff8D93A3),fontSize: 14)),
                ],
              ),
             const SizedBox(height: 10,),
              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: days.length,
                  itemBuilder: (context, index) {
                  return Container(
                     margin: EdgeInsetsDirectional.symmetric(horizontal: 2),
                      width: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black12),
                      color: const Color(0xffF5F5F5)
                    ),
                   child: Center(
                     child: Text(days[index], style: const TextStyle(color: Colors.black),),
                   ),
                  );
                },),
              ),
              // Alarm name field
              const CustomTextField(),

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
             CustomElevatedButton(
                sizeBoxWidth: MediaQuery.of(context).size.width,
              )
            ],
          ),
        ),
      ),

    );
  }
}