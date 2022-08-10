import 'package:auto_route/auto_route.dart';
import 'package:example_three/route/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Dashboard({required this.value, Key? key});
  late String value;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFfafafa),
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              labelPadding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.1),
              unselectedLabelColor: const Color(0xFFbbbfc2),
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xFFe8b4ec), Color(0xFF915EB3)]),
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFFe8b4ec)),
              tabs: const <Widget>[
                Tab(
                  icon: Icon(
                    Icons.account_balance_wallet_outlined,
                    size: 20,
                  ),
                  child: Text('Wallet'),
                ),
                Tab(
                  icon: Icon(Icons.vertical_align_top, size: 20),
                  child: Text(
                    'Top-up',
                  ),
                ),
                Tab(
                  icon: Icon(Icons.compare_arrows, size: 20),
                  child: Text('Transfer'),
                ),
              ],
            ),
            title: const Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 25,
                color: Color(0xFF8d42d7),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              TextButton(
                //body of dashboard
                onPressed: () {
                  context.router.replace(FourthRoute());
                },
                child: Text(
                  "Hello, " + value + "!",
                  //textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Color(0xFF95e1d3),
                  ),
                ),
              ),
              const Text(
                "Test 1",
                textAlign: TextAlign.center,
              ),
              const Text(
                "Test 2",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
