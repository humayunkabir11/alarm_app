import 'package:alarm_app/view/screen/alarm/alarm_list_screen.dart';
import 'package:alarm_app/view/screen/home/home_screen.dart';
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
              TextFormField(
                decoration:  InputDecoration(
                  label: Text('Alarm Name'),
                  hintText: "Task For now",
                  labelStyle: TextStyle(color: Colors.grey,fontSize: 14),
                  hintStyle: TextStyle(color: Colors.black,fontSize: 18),
                ),
              ),

               SizedBox(height: 10,),
               GestureDetector(
                 onTap:  (){
                   Navigator.push(context, MaterialPageRoute(builder: (_)=>AlarmListScreen()));
                 },

                 child: Container(
                   height: 80,
                   decoration: BoxDecoration(
                     border: Border(bottom: BorderSide(color: Colors.black12,width: 2))
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           Text("Alarm Sound"),
                            SizedBox(height: 10,),
                            Text("Fast And Furias.mp3",style: TextStyle(color: Color(0xff252118),fontSize: 18),)
                     ]
                   ),
                       Container(
                         height: 28,
                         width: 28,
                         decoration: BoxDecoration(
                           border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(8)
                         ),
                         child: const Center(
                           child: Icon(Icons.arrow_forward_ios_rounded,size: 16,),
                         ),
                       )
              ]),
                 ),
               ),
              const SizedBox(height: 16,),
              Text("Alarm Volume"),
              const SizedBox(height: 16,),
              const LinearProgressIndicator(
                backgroundColor: Color(0xffF5F5F5),value: 0.7,
                minHeight: 5,
              ),
             const SizedBox(height: 20,),
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),

                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_0)=>AlarmListScreen()));
                    },

                    child: const Text("Add Alarm",style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
        ),
      ),

    );
  }
}