import 'package:alarm_app/utils/color.dart';
import 'package:flutter/material.dart';

class AlartDialogBoxScreen extends StatelessWidget {
  const AlartDialogBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(0),
      ),
      child: const Dialog(),
    );
  }
}
