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

  //-- Controladores --//
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  //-! Controladores --//

  String _infoText = "Informe seus dados!";

  //-- Função de Reset --//
  void _reset () {
    pesoController.text = "";
    alturaController.text = "";
    _infoText= "Informe seus dados!";
  }
  //-! Função de Reset --//

  //-- Função calcular --/
  void _calculate () {
    setState(() {
      double peso = double.parse(pesoController.text);   //trasnformando texto em double
      double altura = double.parse(alturaController.text)/100;
      double imc = peso / (altura * altura);
      print(imc);
      if(imc < 18.6){
        _infoText= "Abaixo do Peso ${imc.toStringAsPrecision(3)}"; //3 digitos
      }else if(imc >= 18.6 && imc < 24.9){
        _infoText= "Peso Ideal ${imc.toStringAsPrecision(3)}"; //3 digitos
      }else if(imc >= 24.9 && imc < 29.9){
        _infoText= "Levemente Acima do Peso ${imc.toStringAsPrecision(3)}"; //3 digitos
      }else if(imc >= 29.9 && imc < 34.9){
        _infoText= "Obesidade Grau I ${imc.toStringAsPrecision(3)}"; //3 digitos
      }else if(imc >= 34.9 && imc < 39.9){
        _infoText= "Obesidade Grau II ${imc.toStringAsPrecision(3)}"; //3 digitos
      }else if(imc >= 40){
        _infoText= "Obesidade Grau III ${imc.toStringAsPrecision(3)}"; //3 digitos
      }
    });
  }
  //-! Função calcular --/

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
            onPressed: (_reset),
          ),
        ],
      ),

      body: SingleChildScrollView (  // ScrollView caso a tela precise descer
        padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 0.0), //espaçamento
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,  //Alinhando conteúdo da coluna
          children:  <Widget>[
            const Icon(Icons.person_outlined, size: 120.0, color: Colors.deepOrange),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Peso (Kg)",
                labelStyle: TextStyle(color: Colors.deepOrangeAccent),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 25.0),
              controller: pesoController
            ),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Altura (cm)",
                labelStyle: TextStyle(color: Colors.deepOrangeAccent),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 25.0),
              controller: alturaController,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: SizedBox(
                height: 50.0,
                child: RaisedButton(
                  onPressed:(_calculate),
                  child: const Text("Calcular",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),),
                  color: Colors.deepOrange,
                ),
              ),
            ),

            Text(_infoText,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, color: Colors.deepOrangeAccent),
            ),

          ],
        ),
      ),
    );
  }
}
