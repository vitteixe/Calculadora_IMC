import 'package:flutter/material.dart';

void main() {
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
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const <Widget>[
          Icon(Icons.person_outlined, size: 120.0, color: Colors.deepOrange),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Peso (Kg)",
              labelStyle: TextStyle(color: Colors.deepOrangeAccent),
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 25.0),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Altura (cm)",
              labelStyle: TextStyle(color: Colors.deepOrangeAccent),
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 25.0),
          ),
        ],
      ),
    );
  }
}
