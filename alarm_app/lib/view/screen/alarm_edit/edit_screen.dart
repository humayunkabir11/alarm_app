import 'package:alarm_app/view/screen/delete/delete_alarm_list.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  List days = ["Mon","Tue","Wed"," Thu","Fri","Sat","Sun"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(flex: 3,
                        child: Row(children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.close_rounded)),
                          Text('Add Alarm')
                        ],)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.check)),
                  ],
                ),
               SizedBox(height: 16,),
               Container(
                 width: MediaQuery.of(context).size.width,
                 height: 300,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Color(0xffF2F2F2),

                 ),
               ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Repeat',style: TextStyle(color: Colors.black,fontSize: 18),),
                    Text("Weekend",style: TextStyle(color: Color(0xff8D93A3),fontSize: 14)),
                  ],
                ),
               SizedBox(
                 height: 70,
                 child: ListView.builder(
                       shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                     itemCount: days.length,
                     itemBuilder: (context,index){
                   return Container(
                     margin: EdgeInsetsDirectional.symmetric(horizontal: 5),
                     width: 45,
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                       color: Color(0xffF2F2F2)
                     ),
                     child: Center(child: Text(days[index])) ,
                   );
                 }),
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
                Container(
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
                      backgroundColor: Color(0xffFFE4E4),
                      shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(16),
                      )
                    ),

                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>DeleteAlarmScreen()));
                    },

                    child: Text("Delete this alarm",style: TextStyle(color: Color(0xffFF7878)),),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
