import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyhomePage());
  }
}

class MyhomePage extends StatefulWidget {
  const MyhomePage({Key? key}) : super(key: key);

  @override
  State<MyhomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyhomePage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.whatshot, size: 20),
        title: const Text("App title"),
        actions: const [Icon(Icons.more_vert_rounded)],
      ),
      body: Center(
        child: Text(
          '$_count',
          style: const TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _increament();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _increament() {
    setState(() {
      _count++;
    });
  }
}
