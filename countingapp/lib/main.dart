import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score App"),
        centerTitle: true,
      ),

      //----------Reset Button
      floatingActionButton: FloatingActionButton(
          onPressed: resetNumber, child: const Icon(Icons.restore)),

      //-------body Start from here
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),

          //Score is Text
          const Text("Score is",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),

          //--------Total Score Display
          const SizedBox(height: 50),
          Text(
            number.toString(),
            style: const TextStyle(
                color: Colors.green,
                fontSize: 100,
                fontWeight: FontWeight.bold),
          ),

          //--------Increase Button
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: increaseNumber,
                child: const Text("Increase",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),

              //-------Decrease Button
              const SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: decreaseNumber,
                child: const Text(
                  "Decrease",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
