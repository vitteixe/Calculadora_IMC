import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
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
        title: const Text("Calculadora IMC"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView (  // ScrollView caso a tela precise descer
        padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 0.0), //espaçamento
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,  //Alinhando conteúdo da coluna
          children:  <Widget>[
            const Icon(Icons.person_outlined, size: 120.0, color: Colors.deepOrange),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Peso (Kg)",
                labelStyle: TextStyle(color: Colors.deepOrangeAccent),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 25.0),
            ),

            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Altura (cm)",
                labelStyle: TextStyle(color: Colors.deepOrangeAccent),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 25.0),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0), 
              child: SizedBox(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {},
                  child: const Text("Calcular",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),),
                  color: Colors.deepOrange,
                ),
              ),
            ),

            const Text("Info",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.deepOrangeAccent),
            ),

          ],
        ),
      ),
    );
  }
}
