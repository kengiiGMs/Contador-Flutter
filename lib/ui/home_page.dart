import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num = 0;
  String text = "Pessoas = 0";
  String phase = "Pode Entrar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contador de Pessoas',
          style: TextStyle(color: Colors.deepPurple),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(
            width: 150.0,
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepPurple),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(text),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                width: 90.0,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Text('+', style: TextStyle(fontSize: 20.0)),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: 90.0,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Text('-', style: TextStyle(fontSize: 20.0)),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              phase,
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
