import 'package:auto_route/auto_route.dart';
import 'package:example_three/route/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String title;
  //final String value;
  const NewPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
        child: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {
                context.router.replace(const FourthRoute());
              },
              child: const Text(
                "Hello, user!",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF95e1d3),
                ),
              ),
              // title,
              //style: const TextStyle(
              // fontSize: 40,
              //fontWeight: FontWeight.bold,
              //),
            ),
          ),
        ),
      );
}
