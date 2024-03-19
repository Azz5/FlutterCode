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
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            child: Expanded(
                          child: Row(children: [
                            Text("Enter Salary: "),
                            _SalaryField(),
                            Text("SAR")
                          ]),
                        )),
                      )
                    ],
                  ),
                ), // widdgets folder
                _Choices()
              ],
            ),
          ),
          Expanded(
            child: Column(children: [
              if (isFoodTrue)
                Row(children: [
                  Expanded(
                    child: Row(
                      children: [Text("Food")],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(children: [Text("Value %")]),
                        Row(children: [Text("Data")]),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(children: [Text("Percentage %")]),
                        Row(children: [Text("Data")]),
                      ],
                    ),
                  )
                ]),
              if (isSavingTrue)
                Row(children: [
                  Expanded(
                    child: Row(
                      children: [Text("Food")],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(children: [Text("Value %")]),
                        Row(children: [Text("Data")]),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(children: [Text("Percentage %")]),
                        Row(children: [Text("Data")]),
                      ],
                    ),
                  )
                ]),
              if (isInvestTrue)
                Row(children: [
                  Expanded(
                    child: Row(
                      children: [Text("Food")],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(children: [Text("Value %")]),
                        Row(children: [Text("Data")]),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(children: [Text("Percentage %")]),
                        Row(children: [Text("Data")]),
                      ],
                    ),
                  )
                ]),
              if (isEntertainmentTrue)
                Row(children: [
                  Expanded(
                    child: Row(
                      children: [Text("Food")],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(children: [Text("Value %")]),
                        Row(children: [Text("Data")]),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(children: [Text("Percentage %")]),
                        Row(children: [Text("Data")]),
                      ],
                    ),
                  )
                ]),
              if (isBillsTrue)
                Row(children: [
                  Expanded(
                    child: Row(
                      children: [Text("Food")],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(children: [Text("Value %")]),
                        Row(children: [Text("Data")]),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(children: [Text("Percentage %")]),
                        Row(children: [Text("Data")]),
                      ],
                    ),
                  )
                ]),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _SalaryField() {
    setState(() {});
    return Expanded(child: TextField());
  }

  Widget _Choices() {
    return Container(
        child: Row(
      children: [
        Expanded(
          child: Column(
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
        ),
        Expanded(
          child: Column(
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
        ),
        Expanded(
          child: Column(
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
        ),
        Expanded(
          child: Column(
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
        ),
        Expanded(
          child: Column(
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
        ),
      ],
    ));
  }
}
