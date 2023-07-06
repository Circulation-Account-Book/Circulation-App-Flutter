import 'package:flutter/material.dart';
import 'package:froot_app/calendar_page/history_list_item.dart';

class HistoryListCard extends StatelessWidget {
  const HistoryListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7.5),
        child: Column(
          children: [
            HistoryListItem(),
            HistoryListItem(),
            HistoryListItem(),
            HistoryListItem(),
          ],
        ),
      ),
    );
  }
}
