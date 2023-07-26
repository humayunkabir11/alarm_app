import 'package:alarm_app/utils/color.dart';
import 'package:flutter/services.dart';

class DeviceUtils{
   static void splashUtils(){
             SystemChrome.setSystemUIOverlayStyle(
               const SystemUiOverlayStyle(
                 statusBarColor: AppColors.transparentColor,
                  statusBarIconBrightness: Brightness.dark,
                 systemNavigationBarColor: AppColors.transparentColor,
                 systemNavigationBarIconBrightness: Brightness.dark
               )
             );
     }
     static void othersUtils (){
    SystemChrome.setSystemUIOverlayStyle(
       const SystemUiOverlayStyle(
           statusBarColor: AppColors.transparentColor,
           statusBarIconBrightness: Brightness.dark,
           systemNavigationBarColor: AppColors.transparentColor,
           systemNavigationBarIconBrightness: Brightness.dark
       )
    );
}
}
