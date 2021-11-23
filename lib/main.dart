import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(
    home: CalcIMC(),
    debugShowCheckedModeBanner: false,
  ));
}

class CalcIMC extends StatefulWidget {
  const CalcIMC({Key? key}) : super(key: key);

  @override
  _CalcIMCState createState() => _CalcIMCState();
}

class _CalcIMCState extends State<CalcIMC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh),
            onPressed: () {},),
        ],
      ),
    );
  }
}
