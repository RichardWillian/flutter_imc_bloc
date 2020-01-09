import 'package:flutter/material.dart';
import 'package:imc/blocs/imc.bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bloc = new ImcBloc();

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
                controller: bloc.heightController,
                keyboardType: TextInputType.number),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
                decoration: InputDecoration(labelText: "Peso (kg)"),
                controller: bloc.weightController,
                keyboardType: TextInputType.number),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(bloc.result, textAlign: TextAlign.center),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: FlatButton(
              child: Text("Calcular"),
              color: Theme.of(context).primaryColor,
              colorBrightness: Brightness.dark,
              onPressed: () {
                setState(() {
                  bloc.calculate();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
