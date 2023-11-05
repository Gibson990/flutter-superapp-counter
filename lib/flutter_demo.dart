import 'dart:io';

import 'package:flutter/material.dart';
import 'counter_storage.dart';

class FlutterDemo extends StatefulWidget {
  final CounterStorage storage;

  const FlutterDemo({super.key, required this.storage});

  @override
  State<FlutterDemo> createState() => _FlutterDemoState();
}

class _FlutterDemoState extends State<FlutterDemo> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    widget.storage.readCounter().then((value) {
      setState(() {
        _counter = value;
      });
    });
  }

  Future<File> _incrementConter() {
    setState(() {
      _counter++;
    });

    return widget.storage.writeCounter(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Super app',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 168, 136, 255),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('The conter is:'),
            const SizedBox(height: 10),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementConter,
        child: const Icon(Icons.save),
      ),
    );
  }
}
