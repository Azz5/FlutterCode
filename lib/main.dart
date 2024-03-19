import 'package:flutter/material.dart';
import "package:flutter/widgets.dart";

void main() {
  runApp(MaterialApp(home: const MoneyApp()));
}

class MoneyApp extends StatefulWidget {
  const MoneyApp({super.key});

  @override
  State<MoneyApp> createState() => _MoneyAppState();
}

class _MoneyAppState extends State<MoneyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Row(
            children: [
              Icon(Icons.money),
              Text(
                "Money Manager",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        body: Column());
  }
}
