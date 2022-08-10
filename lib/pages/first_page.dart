import 'package:auto_route/auto_route.dart';
import 'package:example_three/route/router.gr.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  late String value;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Align(
                  alignment: Alignment(0.0, 0.95),
                  child: SizedBox(
                    width: 340,
                    height: 44,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF8938d7)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        AutoRouter.of(context).push(SecondRoute());
                      },
                      child: const Text(
                        "Get Started",
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
