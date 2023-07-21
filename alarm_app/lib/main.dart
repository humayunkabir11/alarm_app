import 'package:alarm_app/view/screen/home/home_screen.dart';
import 'package:alarm_app/view/screen/slashscreen/splashScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
       home: SplashScreen(),
    );
  }
}




