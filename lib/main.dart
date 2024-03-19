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
  var isFoodTrue = false;
  var isEntertainmentTrue = false;
  var isInvestTrue = false;
  var isBillsTrue = false;
  var isSavingTrue = false;
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
                children: [Expanded(child: _SalaryField())],
              ), // widdgets folder
              Row(
                children: [_Choices()],
              ) //Choices
            ],
          ),
          Column(children: [
            if (isFoodTrue)
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
            if (isSavingTrue)
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
            if (isInvestTrue)
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
            if (isEntertainmentTrue)
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
            if (isBillsTrue)
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
    setState(() {});
    return TextField();
  }

  Widget _Choices() {
    return Container(
        child: Row(
      children: [
        Column(
          children: [
            const Text("Food"),
            Checkbox(
                value: isFoodTrue,
                onChanged: (value) {
                  isFoodTrue = value!;
                  setState(() {});
                })
          ],
        ),
        Column(
          children: [
            const Text("Entertainment"),
            Checkbox(
                value: isEntertainmentTrue,
                onChanged: (value) {
                  isEntertainmentTrue = value!;
                  setState(() {});
                })
          ],
        ),
        Column(
          children: [
            const Text("Investment"),
            Checkbox(
                value: isInvestTrue,
                onChanged: (value) {
                  isInvestTrue = value!;
                  setState(() {});
                })
          ],
        ),
        Column(
          children: [
            const Text("Bills"),
            Checkbox(
                value: isBillsTrue,
                onChanged: (value) {
                  isBillsTrue = value!;
                  setState(() {});
                })
          ],
        ),
        Column(
          children: [
            const Text("Saving"),
            Checkbox(
                value: isSavingTrue,
                onChanged: (value) {
                  isSavingTrue = value!;
                  setState(() {});
                })
          ],
        ),
      ],
    ));
  }
}
