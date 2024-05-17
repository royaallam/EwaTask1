import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ewa Comp2 Taske One",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green.shade900,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30.0,
            width: 20.0,
          ),
          const Padding(
            padding: EdgeInsets.all(20),
          ),
          Center(
            child: const Text(
              "Press the button this number of times",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            width: 200,
            height: 100,
            child: Center(
              child: Text(
                '$_counter',
                style: TextStyle(fontSize: 20),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.green.shade200,
              border: Border.all(
                width: 4,
                color: Colors.green.shade900,
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10, spreadRadius: 5, offset: Offset(0, 5)),
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            width: 200,
            height: 100,
            child: Center(
              child: Text(
                '$_counter',
                style: TextStyle(fontSize: 20),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.green.shade200,
              border: Border.all(
                width: 4,
                color: Colors.green.shade900,
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10, spreadRadius: 5, offset: Offset(0, 5)),
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            width: 200,
            height: 100,
            child: Center(
              child: Text(
                '$_counter',
                style: TextStyle(fontSize: 20),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.green.shade200,
              border: Border.all(
                width: 4,
                color: Colors.green.shade900,
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10, spreadRadius: 5, offset: Offset(0, 5)),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green.shade900,
            onPressed: _decrementCounter,
            tooltip: 'Increment',
            child: const Icon(
              Icons.remove,
              color: Colors.green,
            ),
          ),
          const SizedBox(
            width: 60,
          ),
          FloatingActionButton(
            onPressed: _incrementCounter,
            backgroundColor: Colors.green.shade900,
            tooltip: 'Increment',
            child: const Icon(
              Icons.add,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
