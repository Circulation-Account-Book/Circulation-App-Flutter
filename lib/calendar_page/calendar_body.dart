import 'package:flutter/material.dart';
import 'package:froot_app/calendar_page/controller/calendar_controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:froot_app/calendar_page/day_cell/day_cell_default.dart';
import 'package:froot_app/calendar_page/day_cell/day_cell_outside.dart';
import 'package:froot_app/calendar_page/day_cell/day_cell_today.dart';

class CalendarBody extends StatelessWidget {
  const CalendarBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cont = Get.find<CalendarController>();
    return Obx(
      () => TableCalendar(
        firstDay: DateTime.utc(2000, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        focusedDay: cont.calendarDate.value,
        headerVisible: false,
        locale: "ko_KR",
        daysOfWeekHeight: 22,
        rowHeight: Get.height * 0.115,
        sixWeekMonthsEnforced: true,
        onPageChanged: cont.setPickerDate,
        calendarBuilders: CalendarBuilders(
          defaultBuilder: (context, day, focusedDay) => DayCellDefault(day),
          outsideBuilder: (context, day, focusedDay) => DayCellOutside(day),
          todayBuilder: (context, day, focusedDay) => day.month == focusedDay.month ? DayCellToday(day) : DayCellOutside(day),
          dowBuilder: (context, day) {
            return Container(
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(231, 231, 231, 1)),
              alignment: Alignment.center,
              child: Text(
                DateFormat.E("ko_KR").format(day),
                style: const TextStyle(
                    fontSize: 12, color: Color.fromRGBO(118, 118, 118, 1)),
              ),
            );
          },
        ),
      ),
    );
  }
}
