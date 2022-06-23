import 'package:flutter/material.dart';

import 'package:hero_college/app/data/common/themes/layout.dart';

// ignore: must_be_immutable
class LogoApp extends StatelessWidget {
  double marginTop;
  double insideSize;
  double outsideSize;
  LogoApp({
    Key? key,
    this.marginTop = 20.0,
    this.insideSize = 180.0,
    this.outsideSize = 260.0,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(234, 10, 24, 102).withOpacity(0.9),
              const Color.fromARGB(234, 41, 65, 202).withOpacity(0.5),
              const Color.fromARGB(234, 67, 93, 236).withOpacity(0.5),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          border: Border.all(
            width: 1.5,
            color: Colors.white,
          ),
          shape: BoxShape.circle,
        ),
        width: outsideSize,
        height: outsideSize,
        margin: EdgeInsets.only(top: Layout.getAppHeight(context) / marginTop),
        child: Align(
          alignment: Alignment.center,
          child: Container(
            width: insideSize,
            height: insideSize,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/images/logo.jpg",
                ),
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
