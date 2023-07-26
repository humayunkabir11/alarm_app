

import 'dart:async';

import 'package:alarm_app/utils/images.dart';
import 'package:alarm_app/view/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SplashScreen extends StatefulWidget {
     const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, BoxConstraints constraints) => Container(
            height: constraints.maxHeight, width: constraints.maxWidth,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                    image: AssetImage(AppImages.bgImage),
                    fit: BoxFit.fill
                )
            ),
            child: SvgPicture.asset(
              "assets/images/app_logo.svg"
            ),
          )
        ),
      ),
    );
  }
}
