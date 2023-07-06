import 'package:get/get.dart';

class BodyController extends GetxController {
  var bodyIsCalendar = true.obs;

  void setBody(bool val){
    bodyIsCalendar.value = val;
  }
}