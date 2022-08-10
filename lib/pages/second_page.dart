import 'package:example_three/pages/third_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  late String value; // email
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 340,
                height: 44,
                child: TextField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    hintText: "Username :)",
                    labelText: "Enter Username",
                    labelStyle: TextStyle(
                      color: Color(0xFF8938d7), // <-- Change this
                      fontSize: null,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 4,
                      color: Color(0xFFedebef),
                    )),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Color(0xFFedebef),
                      ),
                    ),
                  ),
                  onChanged: (text) {
                    value = text;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12),
                child: const SizedBox(
                  width: 340,
                  height: 44,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      hintText: "Password :)",
                      labelText: "Enter Password",
                      labelStyle: TextStyle(
                        color: Color(0xFF8938d7), // <-- Change this
                        fontSize: null,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 3,
                        color: Color(0xFFedebef),
                      )),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 4,
                          color: Color(0xFFedebef),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12),
                child: SizedBox(
                  width: 340,
                  height: 44,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF8938d7)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ThirdPage(value: value),
                        ),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
