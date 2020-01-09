import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cálculo IMC"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
                decoration: InputDecoration(labelText: "Altura (cm)"),
                keyboardType: TextInputType.number),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
                decoration: InputDecoration(labelText: "Peso (kg)"),
                keyboardType: TextInputType.number),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text("Você está fora de forma", textAlign: TextAlign.center),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: FlatButton(
              child: Text("Calcular"),
              color: Theme.of(context).primaryColor,
              colorBrightness: Brightness.dark,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
