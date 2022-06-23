import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hero_college/app/data/common/themes/common_style.dart';
import 'package:hero_college/app/data/common/themes/custom_colors.dart';
import 'package:hero_college/app/data/common/themes/layout.dart';
import 'package:hero_college/app/data/common/widgets/common_custom_Button.dart';
import 'package:hero_college/app/data/common/widgets/logo_app.dart';
import 'package:hero_college/app/routes/app_pages.dart';
import '../controllers/start_controller.dart';

class StartView extends GetView<StartController> {
  const StartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: CommonStyle.gradientBackgroundColor,
        child: Stack(
          children: <Widget>[
            LogoApp(),
            Container(
              margin: EdgeInsets.only(
                top: Layout.getAppHeight(context) / 2.2,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: controller.defaultLang.value == 'en'
                    ? Layout.getAppWidth(context) * 0.11
                    : Layout.getAppWidth(context) * 0.32,
              ),
              child: CommonStyle.commonText(
                label: 'chooseLanguage',
                color: Colors.indigoAccent,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: Layout.getAppHeight(context) / 1.8,
                left: 38.0,
                right: 37.0,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 34.0,
              ),
              height: 155.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(234, 10, 24, 102).withOpacity(0.7),
                    const Color.fromARGB(234, 41, 65, 202).withOpacity(0.5),
                    const Color.fromARGB(234, 10, 24, 102).withOpacity(0.7),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                border: Border.all(
                  width: 1.5,
                  color: Colors.white,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Obx(
                      () => RadioListTile(
                        activeColor: Colors.white,
                        title: CommonStyle.commonText(
                          label: 'العربية',
                          textAlign: TextAlign.start,
                        ),
                        value: 'ar',
                        groupValue: controller.defaultLang.value,
                        onChanged: (String? val) {
                          controller.defaultLang.value = val!;
                          Get.updateLocale(
                              Locale(controller.defaultLang.value, 'SA'));
                          // CommonVariables.langCode.write(LANG_CODE, 'ar');
                        },
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 6.0),
                    child: Divider(
                      thickness: 2,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Obx(
                      () => RadioListTile(
                        activeColor: CustomColors.commonTextColor,
                        title: CommonStyle.commonText(
                          label: 'English',
                          size: 18.0,
                          textAlign: TextAlign.start,
                        ),
                        value: 'en',
                        groupValue: controller.defaultLang.value,
                        onChanged: (String? val) {
                          controller.defaultLang.value = val!;
                          Get.updateLocale(
                              Locale(controller.defaultLang.value, 'US'));
                          // CommonVariables.langCode.write(LANG_CODE, 'en');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: CommonCustomButton(
                onPressed: () {
                  Get.toNamed(Routes.ONBOARDING);
                },
                marginTop: Layout.getAppHeight(context) / 1.4,
                nameButton: 'signIn',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
