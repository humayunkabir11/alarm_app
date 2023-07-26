import 'package:flutter/material.dart';

class DeleteAlarmScreen extends StatefulWidget {
  const DeleteAlarmScreen({super.key});

  @override
  State<DeleteAlarmScreen> createState() => _DeleteAlarmScreenState();
}

class _DeleteAlarmScreenState extends State<DeleteAlarmScreen> {
  bool isSwitch1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
                const Text("Add Alarm"),
              Container(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all( color: Colors.black38),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(

                          children: [
                            Container(
                              height:10,
                              width: 10,
                              decoration: const  BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle
                              ),
                            ),
                            const SizedBox(width: 7,),
                            const Text('WeakEnds',style: TextStyle(color: Colors.black38,fontSize: 10),)
                          ],
                        ),
                        const SizedBox(height: 22,),
                        RichText(text: const TextSpan(
                            children: [
                              TextSpan(text: "10.00",style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                              TextSpan(text: "AM",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),

                            ]
                        )),
                        const Text("Week up for office")

                      ],
                    ),
                    SizedBox(
                      child: Checkbox(
                          value: isSwitch1,
                          onChanged: (value){
                        setState(() {
                           isSwitch1 = value!;

                        });

                      },
                        activeColor: Colors.black,

                      ),
                    )
                  ],
                ),
              ),
                const  SizedBox(height: 10),
              Container(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all( color: Colors.black38),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(

                          children: [
                            Container(
                              height:10,
                              width: 10,
                              decoration: const  BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle
                              ),
                            ),
                            const SizedBox(width: 7,),
                            const Text('WeakEnds',style: TextStyle(color: Colors.black38,fontSize: 10),)
                          ],
                        ),
                        const SizedBox(height: 22,),
                        RichText(text: const TextSpan(
                            children: [
                              TextSpan(text: "10.00",style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                              TextSpan(text: "AM",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),

                            ]
                        )),
                        const Text("Week up for office")

                      ],
                    ),
                    SizedBox(
                      child: Checkbox(
                        value: isSwitch1,
                        onChanged: (value){
                          setState(() {
                            isSwitch1 = value!;
                          });

                        },
                        activeColor: Colors.black,

                      ),
                    )
                  ],
                ),
              ),
               const SizedBox(height: 10),
              Container(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all( color: Colors.black38),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(

                          children: [
                            Container(
                              height:10,
                              width: 10,
                              decoration: const  BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle
                              ),
                            ),
                            const SizedBox(width: 7,),
                            const Text('WeakEnds',style: TextStyle(color: Colors.black38,fontSize: 10),)
                          ],
                        ),
                        const SizedBox(height: 22,),
                        RichText(text: const TextSpan(
                            children: [
                              TextSpan(text: "10.00",style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),),
                              TextSpan(text: "AM",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),

                            ]
                        )),
                        const Text("Week up for office")

                      ],
                    ),
                    SizedBox(
                      child: Checkbox(
                        value: isSwitch1,
                        onChanged: (value){
                          setState(() {
                            isSwitch1 = value!;

                          });

                        },
                        activeColor: Colors.black,

                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
