import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 5,
        top: 10,
        left: 10,
        right: 10,
      ),
      child: Row(children: [
        Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                child: Wrap(spacing: 110, alignment: WrapAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                  const Icon(Icons.account_circle, size: 35,),
                  const Text("", style: TextStyle(fontSize: 18)),
                ])),
            SizedBox(height: 20),
            Text(
              "Arthur de Oliveira",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ]),
        )
      ]),
    );
  }
}
