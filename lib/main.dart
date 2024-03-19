import 'package:flutter/cupertino.dart';
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
      body: Column(
        children: [
          Column(
            children: [
              Row(
                children: [Text("Enter Salary: "),_SalaryField(), Text("SAR")],
              ), // widdgets folder
              Row(
                children: [_Choices()],
              ) //Choices
            ],
          ),
          Column(children: [
            if (/*_Choices().isFoodTrue*/ true)
              Row(children: [
                Row(
                  children: [Text("Food")],
                ),
                Column(
                  children: [
                    Row(children: [Text("Value %")]),
                    Row(children: [Text("Data")]),
                  ],
                ),
                Column(
                  children: [
                    Row(children: [Text("Percentage %")]),
                    Row(children: [Text("Data")]),
                  ],
                )
              ]),
            if (/*_Choices().isSavingTrue*/ true)
              Row(children: [
                Row(
                  children: [Text("Food")],
                ),
                Column(
                  children: [
                    Row(children: [Text("Value %")]),
                    Row(children: [Text("Data")]),
                  ],
                ),
                Column(
                  children: [
                    Row(children: [Text("Percentage %")]),
                    Row(children: [Text("Data")]),
                  ],
                )
              ]),
            if (/*_Choices().isInvestTrue*/ true)
              Row(children: [
                Row(
                  children: [Text("Food")],
                ),
                Column(
                  children: [
                    Row(children: [Text("Value %")]),
                    Row(children: [Text("Data")]),
                  ],
                ),
                Column(
                  children: [
                    Row(children: [Text("Percentage %")]),
                    Row(children: [Text("Data")]),
                  ],
                )
              ]),
            if (/*_Choices().isEntertainmentTrue*/ true)
              Row(children: [
                Row(
                  children: [Text("Food")],
                ),
                Column(
                  children: [
                    Row(children: [Text("Value %")]),
                    Row(children: [Text("Data")]),
                  ],
                ),
                Column(
                  children: [
                    Row(children: [Text("Percentage %")]),
                    Row(children: [Text("Data")]),
                  ],
                )
              ]),
            if (/*_Choices().isBillsTrue*/ true)
              Row(children: [
                Row(
                  children: [Text("Food")],
                ),
                Column(
                  children: [
                    Row(children: [Text("Value %")]),
                    Row(children: [Text("Data")]),
                  ],
                ),
                Column(
                  children: [
                    Row(children: [Text("Percentage %")]),
                    Row(children: [Text("Data")]),
                  ],
                )
              ]),
          ])
        ],
      ),
    );
  }

  Widget _SalaryField() {

    setState(() {
      
    });
    return TextField();
  }

  Widget _Choices() {
    return Container();
  }
}
