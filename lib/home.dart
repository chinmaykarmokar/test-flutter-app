import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          margin: EdgeInsets.all(10.0),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("Take earphones in the morning."),
              ],
            ),
          )
        ),
        Card(
            margin: EdgeInsets.all(10.0),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text("Go cycling this weekend."),
                ],
              ),
            )
        ),
        Card(
            margin: EdgeInsets.all(10.0),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text("Learn Flutter."),
                ],
              ),
            )
        ),
      ],
    );
  }
}
