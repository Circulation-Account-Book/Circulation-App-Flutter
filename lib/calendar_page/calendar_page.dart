import 'package:flutter/material.dart';
import 'package:froot_app/calendar_page/controller/body_controller.dart';
import 'package:froot_app/calendar_page/history_body.dart';
import 'package:get/get.dart';

import 'package:froot_app/calendar_page/calendar_body.dart';
import 'package:froot_app/calendar_page/controller/calendar_controller.dart';
import 'package:froot_app/calendar_page/calendar_header.dart';
import 'package:froot_app/calendar_page/month_statistics.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CalendarController());
    var cont = Get.put(BodyController());
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CalendarHeader(), //제목 및 캘린더 컨트롤러
        MonthStatistics(), //이번달 통계
        Obx(() =>
            cont.bodyIsCalendar.value ? CalendarBody() : HistoryBody()) //캘린더
      ],
    );
  }
}
