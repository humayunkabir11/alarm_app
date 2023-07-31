
import 'package:alarm_app/utils/color.dart';
import 'package:alarm_app/utils/images.dart';
import 'package:flutter/material.dart';

class CustomStopWatch extends StatelessWidget {
    CustomStopWatch({super.key,

    this.onTap,
    this.iconOnTap,
    this.containerHeight = 68,
    this.containerWidth =68,
    this.containerColor= AppColors.grayTextColor,
    this.borderRadius = 16,
    this.leftIcon  = Icons.refresh_outlined,
    this.leftIconSize = 24,
    this.leftIconColor = AppColors.blackColor,
    this.rightIconColor = AppColors.blackColor,
    this.rightIconSize = 24,
    this.rightIcon = Icons.alarm_add_outlined,
    this.iconImage = AppImages.iconImage,
    this.iconContainerHeight = 56,
    this.iconContainerWidth = 56,
    this.iconContainerColor,
    this.iconContainerRadius = 8,
  });
  VoidCallback ? onTap;
  VoidCallback ? iconOnTap;
  final double containerHeight;
  final double containerWidth;
  final Color containerColor;
  final double borderRadius;
  final IconData leftIcon;
  final double leftIconSize;
  final Color leftIconColor;
  final Color rightIconColor;
  final double rightIconSize;
  final IconData rightIcon;
  final String iconImage;

 final double iconContainerHeight ;
 final double  iconContainerWidth ;
 final Color  ?iconContainerColor;
 final double iconContainerRadius;


  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Icon(leftIcon,size: leftIconSize,color: leftIconColor,),
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: containerHeight,
              width: containerWidth,
              decoration: BoxDecoration(
                color: containerColor,
                image: DecorationImage(image: AssetImage(iconImage)),
                borderRadius: BorderRadius.circular(borderRadius),

              ),
            ),
          ),
           GestureDetector(
             onTap: iconOnTap,
             child: Container(
                 height: iconContainerHeight,
                 width: iconContainerWidth,
                 decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(8),
                 color: iconContainerColor
               ),
                 child: Icon(rightIcon,size: rightIconSize,color: rightIconColor,)),
           ),

        ],
    );
  }
}
