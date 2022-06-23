import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hero_college/app/data/common/themes/common_style.dart';
import 'package:hero_college/app/data/common/themes/custom_colors.dart';
import 'package:hero_college/app/data/common/themes/layout.dart';
import 'package:hero_college/app/data/common/widgets/common_custom_Button.dart';
import 'package:hero_college/app/routes/app_pages.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: CommonStyle.gradientBackgroundColor,
        child: Stack(
          children: [
            DefaultTabController(
              length: controller.tabs.length,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: PageView(
                      onPageChanged: ((value) =>
                          controller.pageIndex.value = value),
                      controller: controller.pageController,
                      children: List.generate(
                        controller.tabs.length,
                        (index) => Container(
                          margin: const EdgeInsets.all(20.0),
                          child: ListView(
                            children: <Widget>[
                              Container(
                                  margin: const EdgeInsets.only(top: 60.0),
                                  child: CommonStyle.commonText(
                                    label: controller.tabs[index],
                                    size: 21.0,
                                  )),
                              Container(
                                margin: const EdgeInsets.only(top: 50),
                                child: Image.asset(
                                  'assets/images/ind$index.png',
                                  width: 280.0,
                                  height: 280.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  CommonCustomButton(
                    onPressed: () {
                      controller.pageIndex.value == 3
                          ? Get.offNamedUntil(
                              Routes.USER_KIND,
                              ModalRoute.withName(Routes.START),
                            )
                          : controller.pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linearToEaseOut);
                    },
                    nameButton: 'continue',
                    marginLeft: Layout.getAppWidth(context) / 3,
                    marginRight: Layout.getAppWidth(context) / 3,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 40, top: 45.0),
                    child: Obx(
                      () => DotsIndicator(
                        dotsCount: controller.tabs.length,
                        position: controller.pageIndex.value.toDouble(),
                        decorator: const DotsDecorator(
                          color: Color.fromARGB(88, 222, 206, 206),
                          activeColor: Color.fromARGB(191, 59, 11, 171),
                          size: Size.square(18.0),
                          activeSize: Size.square(16.0),
                          shape: CircleBorder(
                            side: BorderSide(
                              width: 1.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        onTap: (value) =>
                            controller.pageController.animateToPage(
                          value.toInt(),
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linearToEaseOut,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton.icon(
                    icon: const Icon(
                      Icons.cancel_outlined,
                      color: Color.fromARGB(200, 8, 98, 38),
                    ),
                    onPressed: () => Get.offNamedUntil(
                      Routes.USER_KIND,
                      ModalRoute.withName(Routes.START),
                    ),
                    label: CommonStyle.commonText(
                        label: 'skip',
                        color: const Color.fromARGB(200, 8, 98, 38),
                        size: 18.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
