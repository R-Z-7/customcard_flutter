// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:customcard_flutter/customcard.dart';
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Card"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  AppCard(
                    boxShadowColor: Colors.blue,
                    borderStyle: Border.all(color: Colors.black, width: 2),
                    child: Column(
                      children: [
                        Text(
                          "Data0",
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                  ),
                  AppCard(
                    boxShadowColor: Colors.red.shade100,
                    borderStyle: Border.all(color: Colors.red, width: 10),
                    child: Column(
                      children: [
                        Text(
                          "Data1",
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                  ),
                  AppCard(
                    boxShadowColor: Colors.deepPurple,
                    borderStyle: Border.all(
                        color: Colors.deepPurpleAccent.shade200, width: 6),
                    child: Column(
                      children: [
                        Text(
                          "Data2",
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                  ),
                  AppCard(
                    boxShadowColor: Colors.deepPurpleAccent,
                    borderStyle:
                        Border.all(color: Colors.deepOrangeAccent, width: 2),
                    child: Column(
                      children: [
                        Text(
                          "Data3",
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
