import 'package:finance_app/components/cards.dart';
import 'package:finance_app/components/historyList.dart';
import 'package:finance_app/components/menu.dart';
import 'package:finance_app/components/preview.dart';
import 'package:finance_app/style/colors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        toolbarHeight: 110,
        title: const Menu()
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Preview(),
          const Cards(),
          const HistoryList()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.attach_money_rounded), label: ""),
          const BottomNavigationBarItem(icon: Icon(Icons.history), label: ""),
          const BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ""),
        ],
        currentIndex: 0,
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.of(context).pushReplacementNamed("/");
              break;
            case 1:
              Navigator.of(context).pushReplacementNamed("/history");
              break;
            case 2:
              Navigator.of(context).pushReplacementNamed("/payment_cart");
              break;
          }
        },
      ),
    );
  }
}
