import 'package:finance_app/components/cardItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

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
            child: const Text("Contas"),
          ),
          Container(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CardItem()
                ],
              ))
        ]));
  }
}
