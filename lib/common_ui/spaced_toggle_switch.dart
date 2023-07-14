import 'package:flutter/material.dart';
import 'package:froot_app/common_ui/spaced_toggle_switch_controller.dart';
import 'package:get/get.dart';

class SpacedToggleSwitch extends StatelessWidget {
  final SpacedToggleSwitchController cont;
  final int totalSwitches;
  final double fontSize;
  final Color selectedColor;
  final Color defaultColor;
  final double height;
  final double width;
  final List<String> labels;

  SpacedToggleSwitch({
    Key? key,
    required this.totalSwitches,
    required this.selectedColor,
    required this.defaultColor,
    required this.fontSize,
    required this.labels,
    required this.height,
    required this.width,
    required int initialIndex,
  }) : cont = SpacedToggleSwitchController(initialIndex);

  @override
  Widget build(BuildContext context) {
    var selectedDecoration = BoxDecoration(
      color: selectedColor
    );
    var defaultDecoration = BoxDecoration(
        color: Colors.white, border: Border.all(color: defaultColor));

    var selectedTxtStyle = TextStyle(fontSize: fontSize, color: Colors.white);
    var defaultTxtStyle = TextStyle(fontSize: fontSize, color: defaultColor);

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            totalSwitches,
            (index) => GestureDetector(
                onTap: () => cont.setIndex(index),
                child: Obx(
                  () => Container(
                    alignment: Alignment.center,
                    width: width,
                    height: height,
                    decoration: cont.selectedIndex == index
                        ? selectedDecoration
                        : defaultDecoration,
                    child: Text(
                      labels[index],
                      style: cont.selectedIndex == index
                          ? selectedTxtStyle
                          : defaultTxtStyle,
                    ),
                  ),
                )),
            growable: false));
  }
}
