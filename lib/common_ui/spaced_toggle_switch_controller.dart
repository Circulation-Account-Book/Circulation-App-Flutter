import 'package:get/get.dart';

class SpacedToggleSwitchController extends GetxController {
  RxInt selectedIndex;

  SpacedToggleSwitchController(int val) : selectedIndex = val.obs;

  void setIndex(int val) {
    selectedIndex.value = val;
  }
}
