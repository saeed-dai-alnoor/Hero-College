import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  PageController pageController = PageController();
  var pageIndex = 0.obs;

  void onpageChanged(int value) {
    pageIndex.value = value;
  }

  final List<String> tabs = [
    'easy',
    'forTeacher',
    'forApp',
    'aboutUs',
  ];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
