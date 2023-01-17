import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            left: BorderSide(width: 6.0, color: Color.fromRGBO(148, 0, 211, 1)),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300, spreadRadius: 2, blurRadius: 6)
          ]),
      child: Container(
        margin: const EdgeInsets.only(
              bottom: 5,
              top: 10,
              left: 10,
              right: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [ Text("Deposito"), Text("10,00 R\$")], 
            ),
            SizedBox(height: 10),
            const Text("Deposito realizado de forma TED")
          ],
        )
      ),
    );
  }
}
