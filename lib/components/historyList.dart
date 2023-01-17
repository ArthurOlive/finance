import 'package:flutter/cupertino.dart';

import 'historyItem.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          bottom: 5,
          top: 10,
          left: 10,
          right: 10,
        ),
        padding: const EdgeInsets.only(
          bottom: 0,
          top: 0,
          left: 0,
          right: 0,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: 5,
              top: 10,
              left: 10,
              right: 10,
            ),
            child: const Text("Ultimos lançamentos"),
          ),
          const HistoryItem(),
          const HistoryItem(),
          const HistoryItem(),

        ]));
  }
}
