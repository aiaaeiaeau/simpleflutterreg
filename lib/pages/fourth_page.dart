import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFf28180),
        title: const Text("Fourth Page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextButton(
              onPressed: () {
                context.router.popUntilRoot();
              },
              child: const Text(
                "Click here to go back to the first page :) ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF95e1d3),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
