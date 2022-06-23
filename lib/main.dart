import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:hero_college/app/core/utils/lang/languages.dart';
import 'package:hero_college/app/data/common/themes/custom_colors.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      fallbackLocale: const Locale('ar', 'SA'),
      locale: const Locale('ar', 'SA'),
      theme: ThemeData(
        unselectedWidgetColor: Colors.white,
        // appBarTheme: AppBarTheme(
        //   systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        //     statusBarColor: Colors.transparent,
        //     systemNavigationBarColor: CustomColors.commonTextColor,
        //   ),
        // ),
      ),
    ),
  );
}
