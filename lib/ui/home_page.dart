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

  void btnChange(String type) {
    setState(() {
      if (type == "Decrement") {
        num--;
        text = "Pessoas = ${num}";
      } else if (type == "Increment") {
        num++;
        text = "Pessoas = ${num}";
      }
      alterPhase();
    });
  }

  void alterPhase() {
    if (num < 0) {
      phase = "Mundo Invertido ?";
    } else if (num > 15) {
      phase = "Cheio";
    } else {
      phase = "Pode Entrar";
    }
  }

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
                  onPressed: () {
                    btnChange('Increment');
                  },
                  child: Text('+', style: TextStyle(fontSize: 20.0)),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: 90.0,
                child: FloatingActionButton(
                  onPressed: () {
                    btnChange('Decrement');
                  },
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
                color: num > 15 ? Colors.red : Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
