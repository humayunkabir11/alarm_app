
import 'package:alarm_app/utils/device_util.dart';
import 'package:alarm_app/view/screen/slashscreen/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    DeviceUtils.splashUtils();
    super.initState();
  }
  @override
  void dispose(){
    DeviceUtils.othersUtils();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Sizer(
      builder: (context , Orientation , DeviceType){
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),

        );
      }

    );
  }
}





