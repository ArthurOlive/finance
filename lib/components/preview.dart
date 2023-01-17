import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Preview extends StatelessWidget {
  const Preview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 5,
        top: 10,
        left: 10,
        right: 10,
      ),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300, spreadRadius: 2, blurRadius: 6)
            ]),
        child: Container(
            margin: const EdgeInsets.only(
              bottom: 5,
              top: 40,
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 5,
                      children: const [
                        Text("30,00", style: TextStyle(fontSize: 24)),
                        Text("R\$",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold))
                      ],
                    ),
                    const Text("Saldo Total")
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 5,
                      children: const [
                        Text("2.000,00", style: TextStyle(fontSize: 24)),
                        Text("R\$",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold))
                      ],
                    ),
                    const Text("Crédito disponivel")
                  ],
                )
              ],
            )),
      ),
    );
  }
}
