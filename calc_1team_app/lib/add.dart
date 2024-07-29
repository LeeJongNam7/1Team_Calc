import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  late TextEditingController viewCalcNum;
  late double num;

  @override
  void initState() {
    super.initState();
    viewCalcNum = TextEditingController();
    viewCalcNum.text = '0';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Calculator'),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 500,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 30),
                  child: TextField(
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    controller: viewCalcNum,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                      filled: true,
                      fillColor: Colors.white60,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    readOnly: true,
                  ),
                ),
                const Divider(
                  indent: 10,
                  endIndent: 10,
                  thickness: 2,
                ),
                buildButtonRow(['1', '2', '3']),
                buildButtonRow(['4', '5', '6']),
                buildButtonRow(['7', '8', '9']),
                buildButtonRow(['0']),
                buildButtonRow(['+', '=', 'C']),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButtonRow(List<String> buttons) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: buttons.map((button) {
          return ElevatedButton(
            onPressed: () => onButtonPressed(button),
            style: ElevatedButton.styleFrom(
              backgroundColor: button == '=' ? 
              Colors.blue[200] : Colors.white70,
            ),
            child: Text(
              button,
              style: TextStyle(
                color: button == '=' ? Colors.white : Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  void onButtonPressed(String buttonText) {
    setState(() {
      if (buttonText == '=') {
        calculateResult();
      } else if (buttonText == 'C') {
        clearInput();
      } else if (buttonText == '+') {
        num = double.parse(viewCalcNum.text);
        clearInput();
      } else {
        if (viewCalcNum.text == '0') {
          viewCalcNum.text = buttonText;
        } else {
          viewCalcNum.text += buttonText;
        }
      }
    });
  }

  void calculateResult() {
    double value = double.parse(viewCalcNum.text);
    double result = num + value;
    viewCalcNum.text = result.toString();
  }

  void clearInput() {
      viewCalcNum.text = '0';
  }
}