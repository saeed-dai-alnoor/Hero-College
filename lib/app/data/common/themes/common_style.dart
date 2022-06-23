import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hero_college/app/data/common/themes/custom_colors.dart';

class CommonStyle {
 
  static Text commonText(
          {required String label, double? size, TextAlign? textAlign, Color? color}) =>
      Text(
        label.tr,
        textAlign: textAlign ?? TextAlign.center,
        softWrap: true,
        style: TextStyle(
          fontSize: size ?? 24.0,
          color:color?? CustomColors.commonTextColor,
          fontWeight: FontWeight.bold,
        ),
      );

  static BoxDecoration gradientBackgroundColor = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        CustomColors.primColor,
        const Color.fromARGB(255, 89, 218, 93).withOpacity(0.5),
        CustomColors.primColor.withOpacity(0.6),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
}
