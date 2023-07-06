import 'package:flutter/material.dart';

class HistoryListItem extends StatelessWidget {
  const HistoryListItem({super.key});
  final txtStyle1 = const TextStyle(color: Color.fromRGBO(118, 118, 118, 1), fontSize: 12);
  final txtStyle2 = const TextStyle(color: Color.fromRGBO(118, 118, 118, 1), fontSize: 12, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.5),
      child: Row(
        children: [
          Expanded(
              child: Center(
                  child: Text(
                    '5/3',
                    style: txtStyle1,
                  ))),
          Expanded(child: Center(child: Text('알바비', style: txtStyle1))),
          Expanded(
            child: Center(child: Text('동기 생일선물', style: txtStyle2)),
            flex: 2,
          ),
          Expanded(
            child: Center(child: Text('+ 520,000', style: txtStyle1)),
            flex: 2,
          ),
          Expanded(child: Center(child: Text('수입', style: txtStyle2))),
        ],
      ),
    );
  }
}
