import 'package:flutter/material.dart';

class SpacedToggleSwitch extends StatefulWidget {
  final int initialIndex;
  final int totalSwitches;
  final double fontSize;
  final Color primaryColor;

  SpacedToggleSwitch(
      {Key? key,
      required this.totalSwitches,
      required this.initialIndex,
      required this.primaryColor,
      required this.fontSize})
      : super(key: key);

  @override
  State<SpacedToggleSwitch> createState() => _SpacedToggleSwitchState();
}

class _SpacedToggleSwitchState extends State<SpacedToggleSwitch> {
  late int selectedindex;

  @override
  void initState() {
    super.initState();
    selectedindex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    var selectedDecoration = BoxDecoration(
      color: widget.primaryColor.withOpacity(0.7),
    );
    var defaultDecoration = BoxDecoration(
        color: Colors.white, border: Border.all(color: widget.primaryColor));

    var selectedTxtStyle =
        TextStyle(fontSize: widget.fontSize, color: Colors.white);
    var defaultTxtStyle =
        TextStyle(fontSize: widget.fontSize, color: widget.primaryColor);

    return Row(
      children: [
        GestureDetector(
          onTap: () => setState(() => selectedindex = 0),
          child: Container(
            alignment: Alignment.center,
            decoration:
                selectedindex == 0 ? selectedDecoration : defaultDecoration,
            child: Text(
              "소비",
              style: selectedindex == 0 ? selectedTxtStyle : defaultTxtStyle,
            ),
          ),
        ),
        GestureDetector(
          onTap: () => setState(() => selectedindex = 1),
          child: Container(
            alignment: Alignment.center,
            decoration:
                selectedindex == 1 ? selectedDecoration : defaultDecoration,
            child: Text(
              "낭비",
              style: selectedindex == 1 ? selectedTxtStyle : defaultTxtStyle,
            ),
          ),
        ),
        GestureDetector(
            onTap: () => setState(() => selectedindex = 2),
            child: Container(
              alignment: Alignment.center,
              decoration:
                  selectedindex == 2 ? selectedDecoration : defaultDecoration,
              child: Text(
                "투자",
                style: selectedindex == 2 ? selectedTxtStyle : defaultTxtStyle,
              ),
            ))
      ],
    );
  }
}
