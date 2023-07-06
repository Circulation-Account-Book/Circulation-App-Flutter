import 'package:flutter/material.dart';
import 'package:froot_app/calendar_page/histroy_list_card.dart';
import 'package:get/get.dart';

class HistoryBody extends StatelessWidget {
  const HistoryBody({super.key});

  final txtStyle = const TextStyle(color: Color.fromRGBO(118, 118, 118, 1), fontSize: 12);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color.fromRGBO(231, 231, 231, 1),
          height: 22,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Center(
                      child: Text(
                '날짜',
                style: txtStyle,
              ))),
              Expanded(child: Center(child: Text('분류', style: txtStyle))),
              Expanded(
                child: Center(child: Text('내용', style: txtStyle)),
                flex: 2,
              ),
              Expanded(
                child: Center(child: Text('금액', style: txtStyle)),
                flex: 2,
              ),
              Expanded(child: Center(child: Text('평가', style: txtStyle))),
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.69,
          child: ListView(
            children: [
              HistoryListCard(),
              HistoryListCard(),
              HistoryListCard(),
              HistoryListCard(),
            ],
          )
        )
      ],
    );
  }
}
