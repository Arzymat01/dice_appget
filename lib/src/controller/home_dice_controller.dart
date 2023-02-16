import 'dart:math';

import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt leftnumber = 4.obs;
  RxInt rightnumber = 3.obs;
  void bas() {
    leftnumber.value = Random().nextInt(7);
    rightnumber.value = Random().nextInt(7);
  }

  int teksher(int san) {
    if (san == 0) {
      return 1;
    } else {
      return san;
    }
  }
}
