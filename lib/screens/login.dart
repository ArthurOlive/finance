import 'package:finance_app/app.dart';
import 'package:finance_app/components/menu.dart';
import 'package:finance_app/style/colors.dart';
import 'package:flutter/cupertino.dart';
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
      body: Container(
          height: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 95, horizontal: 20),
          color: Colors.blueAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(children: const [
                    Text(
                      "Finance",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ]),
                  const Text(
                    "Começe a poupar com pouco e projete seus planos de economia",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white70),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black45,
                            spreadRadius: 2,
                            blurRadius: 6)
                      ]
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Form(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                            height: 45,
                            child: ElevatedButton(
                              onPressed: () => {
                                 Navigator.of(context).pushReplacementNamed("/home")
                              },
                              child: const Text("Entrar"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size.infinite),
                            ))
                      ])))
            ],
          )),
    );
  }
}
