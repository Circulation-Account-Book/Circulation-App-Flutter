import 'package:flutter/material.dart';
import 'package:froot_app/common_ui/spaced_toggle_switch.dart';
import 'package:get/get.dart';

class AddPage extends StatelessWidget {
  AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var subTitleStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w600);
    var normalTxtStyle = TextStyle(fontSize: 14, color: Color(0xFF767676));
    var divider = Divider(color: Color(0xB2999999), thickness: 1, height: 0);
    var padding = EdgeInsets.only(top: 16, bottom: 18, left: 28, right: 28);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black.withOpacity(0.7),
        ),
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () => Get.focusScope!.unfocus(),
        child: ListView(
          children: [
            Padding(
                padding:
                    EdgeInsets.only(top: 15, bottom: 30, left: 28, right: 28),
                child: Text('내역 추가',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ))),
            Padding(
              padding: EdgeInsets.only(bottom: 30, left: 28, right: 28),
              child: SpacedToggleSwitch(
                  totalSwitches: 2,
                  defaultColor: Color(0xFF999999),
                  selectedColor: Color(0xB2767676),
                  fontSize: 12,
                  labels: ["수입", "지출"],
                  width: 159,
                  height: 32,
                  initialIndex: 1),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30, left: 28, right: 28),
              child: SpacedToggleSwitch(
                  totalSwitches: 3,
                  defaultColor: Color(0xFF6A93BF),
                  selectedColor: Color(0xB26A93BF),
                  fontSize: 12,
                  labels: ["소비", "낭비", "투자"],
                  width: 100,
                  height: 32,
                  initialIndex: 1),
            ),
            Padding(
                padding: padding,
                child: Row(
                  children: [
                    SizedBox(
                        child: Text("날짜", style: subTitleStyle), width: 110),
                    Text("날짜선택", style: normalTxtStyle)
                  ],
                )),
            divider,
            Padding(
                padding: padding,
                child: Row(
                  children: [
                    SizedBox(
                        child: Text("반복", style: subTitleStyle), width: 110),
                    Text("매월 동일 날짜에 자동 등록", style: normalTxtStyle)
                  ],
                )),
            divider,
            Padding(
                padding: padding,
                child: Row(
                  children: [
                    SizedBox(
                        child: Text("금액", style: subTitleStyle), width: 110),
                    SizedBox(
                        width: 200,
                        height: 22,
                        child: TextField(
                          style: normalTxtStyle,
                          decoration: InputDecoration(),
                          keyboardType: TextInputType.number,
                        )),
                    Text("원", style: normalTxtStyle)
                  ],
                )),
            divider,
            Padding(
                padding: padding,
                child: Row(
                  children: [
                    SizedBox(
                        child: Text("분류", style: subTitleStyle), width: 110),
                    Text("식비", style: normalTxtStyle)
                  ],
                )),
            divider,
            Padding(
                padding: padding,
                child: Row(
                  children: [
                    SizedBox(
                        child: Text("내용", style: subTitleStyle), width: 110),
                    SizedBox(
                        width: 200,
                        height: 22,
                        child: TextField(style: normalTxtStyle)),
                  ],
                )),
            divider,
            Padding(
                padding: padding,
                child: Row(
                  children: [
                    SizedBox(
                        child: Text("메모", style: subTitleStyle), width: 110),
                    SizedBox(
                        width: 200,
                        height: 22,
                        child: TextField(
                          style: normalTxtStyle,
                        )),
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(top: 20, left: 28, right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(221, 44),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          side: BorderSide(color: Color(0xFF767676), width: 1),
                        ),
                        child: Text(
                          "삭제",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF767676)),
                        )),
                    OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            minimumSize: Size(100, 44),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            side:
                                BorderSide(color: Color(0xFF6A93BF), width: 1)),
                        child: Text(
                          "저장",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF6A93BF)),
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
