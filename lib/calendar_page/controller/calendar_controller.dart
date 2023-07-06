import 'package:froot_app/calendar_page/model/day_contents_model.dart';
import 'package:froot_app/calendar_page/model/month_contents_model.dart';
import 'package:get/get.dart';

class CalendarController extends GetxController {
  var pickerDate = DateTime.now().obs;
  var calendarDate = DateTime.now().obs;
  var curMonthData = MonthContentsModel().obs;

  DayContentsModel? getDayContents(int day) => curMonthData.value.dayContentsMap[day];

  void setDate(DateTime newDate) {
    calendarDate.value = newDate;
  }

  void setPickerDate(DateTime newDate) {
    pickerDate.value = newDate;
  }
}