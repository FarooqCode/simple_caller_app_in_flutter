import 'package:flutter/material.dart';
import 'package:flutter_dialpad/flutter_dialpad.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var callnum = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          const SizedBox(
            height: 30,
          ),
          DialPad(
            enableDtmf: true,
            backspaceButtonIconColor: Colors.red,
            buttonColor: Colors.red,
            buttonTextColor: Colors.white,
            dialOutputTextColor: Colors.white,
            keyPressed: ((value) {
              setState(() {
                callnum = value;
              });
            }),
            makeCall: (value) async {
              FlutterPhoneDirectCaller.callNumber(value);
            },
          )
        ]),
      ),
    );
  }
}
