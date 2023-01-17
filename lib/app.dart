
import 'package:finance_app/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColorDark: Colors.red,
        brightness: Brightness.light),
      initialRoute: '/',
      routes: {
        '/' : (context) => const Login()
      }
    );
  }
}