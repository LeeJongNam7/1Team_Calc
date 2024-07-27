import 'package:flutter/material.dart';

class Div extends StatefulWidget {
  const Div({super.key});

  @override
  State<Div> createState() => _DivState();
}

class _DivState extends State<Div> {

  // Property
  late TextEditingController viewCalcNum;
  late double num1;
  late double num2;

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
        title: const Text('Divide'),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 450,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(15)
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
                        borderRadius: BorderRadius.circular(30)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30)
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () => calcPushNum('1'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70
                        ),
                        child: const Text(
                          "1",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => calcPushNum('2'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70
                        ),
                        child: const Text(
                          "2",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => calcPushNum('3'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70
                        ),
                        child: const Text(
                          "3",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () => calcPushNum('4'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70
                        ),
                        child: const Text(
                          "4",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => calcPushNum('5'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70
                        ),
                        child: const Text(
                          "5",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => calcPushNum('6'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70
                        ),
                        child: const Text(
                          "6",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () => calcPushNum('7'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70
                        ),
                        child: const Text(
                          "7",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => calcPushNum('8'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70
                        ),
                        child: const Text(
                          "8",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => calcPushNum('9'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70
                        ),
                        child: const Text(
                          "9",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () => divideButton(),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70
                        ),
                        child: const Text(
                          "÷",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => calcPushNum('0'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70
                        ),
                        child: const Text(
                          "0",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => equalButton(),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[200],
                        ),
                        child: const Text(
                          "=",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () => calcPushNum('.'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70
                        ),
                        child: const Text(
                          ".",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => deleteButton(),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70
                        ),
                        child: const Text(
                          "<-",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => clearButton(),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[200],
                        ),
                        child: const Text(
                          "C",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  calcPushNum(String num){
    if(num == '.'){
      viewCalcNum.text += num;
    }else{
      viewCalcNum.text = viewCalcNum.text == '0' ? '' : viewCalcNum.text;
      viewCalcNum.text += num;
    }
    
    setState(() {});
  }

  divideButton(){
    num1 = double.parse(viewCalcNum.text);
    viewCalcNum.text = '0';
    setState(() {});
  }

  equalButton(){
    num2 = double.parse(viewCalcNum.text);
    dynamic result = num1 / num2;
    if(result % 1 == 0){
      result = result.toInt();
    }
    viewCalcNum.text = result.toString();
  }

  deleteButton(){
    viewCalcNum.text = viewCalcNum.text.substring(0,viewCalcNum.text.length-1);
    viewCalcNum.text = viewCalcNum.text.isEmpty ? '0' : viewCalcNum.text;
    setState(() {});
  }

  clearButton(){
    viewCalcNum.text = '0';
    setState(() {});
  }
}