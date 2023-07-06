import 'package:flutter/material.dart';
import 'package:froot_app/calendar_page/controller/body_controller.dart';
import 'package:froot_app/calendar_page/controller/calendar_controller.dart';
import 'package:froot_app/calendar_page/month_year_picker.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CalendarHeader extends StatelessWidget {
  const CalendarHeader({Key? key}) : super(key: key);

  final txtStyle =
      const TextStyle(fontSize: 16, color: Color.fromRGBO(118, 118, 118, 1));

  @override
  Widget build(BuildContext context) {
    var calCont = Get.find<CalendarController>();
    var bodyCont = Get.find<BodyController>();

    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "소비 달력",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          Container(
              alignment: Alignment.centerLeft,
              width: 115,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Color.fromRGBO(118, 118, 118, 1)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {
                    bodyCont.setBody(!bodyCont.bodyIsCalendar.value);
                  },
                  child: Obx(() => Text(
                      bodyCont.bodyIsCalendar.value ? '월별' : '일별',
                      style: txtStyle)))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                onPressed: () =>
                    Get.dialog(MonthYearPicker(calCont.pickerDate.value))
                        .then((selectedDate) {
                  if (selectedDate != null) calCont.setDate(selectedDate);
                }),
                child: Obx(
                  () => Text(
                    DateFormat.yMMM('ko_KR').format(calCont.pickerDate.value),
                    style: txtStyle,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
