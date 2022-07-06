import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Calculadora',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          painelContainer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              keyboardCalc('7'),
              keyboardCalc('8'),
              keyboardCalc('9'),
              keyboardCalc('/'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              keyboardCalc('4'),
              keyboardCalc('5'),
              keyboardCalc('6'),
              keyboardCalc('*'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              keyboardCalc('1'),
              keyboardCalc('2'),
              keyboardCalc('3'),
              keyboardCalc('-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              keyboardCalc('c'),
              keyboardCalc('0'),
              keyboardCalc('='),
              keyboardCalc('+'),
            ],
          ),
        ],
      ),
    );
  }

  Widget painelContainer() {
    return Container(
      padding: const EdgeInsets.only(left: 290, bottom: 32, top: 35, right: 10),
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: const Text(
        '55+26',
        style: TextStyle(
          fontSize: 55,
          color: Colors.white,
        ),
      ),
    );
  }
}

Widget keyboardCalc(String text) {
  return ElevatedButton(
      onPressed: () {
        print('$text');
      },
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(30)),
        backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 30, color: Colors.white),
      ));
}
