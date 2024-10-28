import 'package:get/get.dart';

class DashboardController extends GetxController {
  RxInt currentIndex = 0.obs;

  void onUpdateTab(int value) {
    currentIndex.value = value;
  }
}
