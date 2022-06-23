// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hero_college/app/data/common/themes/layout.dart';

// ignore: must_be_immutable
class CommonCustomButton extends StatelessWidget {
  double marginTop;
  double marginBottom;
  double marginRight;
  double marginLeft;
  String nameButton;
  Function() onPressed;
  CommonCustomButton({
    Key? key,
    this.marginTop = 40.0,
    this.marginBottom = 20.0,
    this.marginRight = 0.0,
    this.marginLeft = 0.0,
    this.nameButton = 'Button Name',
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Layout.getAppWidth(context) / 2,
      margin: EdgeInsets.only(
        top: marginTop,
        bottom: marginBottom,
        right: marginRight,
        left: marginLeft,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(234, 10, 24, 102).withOpacity(0.75),
            const Color.fromARGB(234, 41, 65, 202).withOpacity(0.45),
            const Color.fromARGB(234, 10, 24, 102).withOpacity(0.75),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        border: Border.all(
          width: 1.5,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          nameButton.tr,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
          softWrap: true,
        ),
      ),
    );
  }
}
