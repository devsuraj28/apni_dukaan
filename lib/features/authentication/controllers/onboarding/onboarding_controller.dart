import 'dart:developer';

import 'package:apni_dukaan/features/authentication/screens/login/login.dart';
import 'package:apni_dukaan/utils/logging/logger.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///Variables
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  ///Update current index when Page Scroll
  void updatePageIndicator(int index) => currentPageIndex.value = index;

  ///Jump to the specific dot page selected
  void dotNavigationClicked(int index) {
    currentPageIndex.value = index;
    BaseAppLoggerHelper.debug("Current Page Index : ${currentPageIndex.value}");
    pageController.jumpToPage(index);
  }

  ///Update current index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(
        () => const LoginScreen(),
      );
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  ///Update current index & jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
