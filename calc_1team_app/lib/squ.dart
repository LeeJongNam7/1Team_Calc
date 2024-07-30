import 'package:flutter/material.dart';

class Squ extends StatefulWidget {
  const Squ({super.key});

  @override
  State<Squ> createState() => _SquState();
}

class _SquState extends State<Squ> {
//Property
late TextEditingController num1Controller;

@override
  void initState() {
    super.initState();
    num1Controller = TextEditingController();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SquareCalculator"),
      ),
      body: Column(
        children: [
          TextField(
            controller: num1Controller,
              decoration: const InputDecoration(
                labelText: ""
              ),
              keyboardType: TextInputType.number,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    clearButton();
                  },
                  child: const Text("C"),
                ),
              ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      pressButton('1');
                    },
                    child: const Text("1"),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      pressButton('2');
                    },
                    child: const Text("2"),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      pressButton('3');
                    },
                    child: const Text("3"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      pressButton('4');
                    },
                    child: const Text("4"),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      pressButton('5');
                    },
                    child: const Text("5"),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      pressButton('6');
                    },
                    child: const Text("6"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      pressButton('7');
                    },
                    child: const Text("7"),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      pressButton('8');
                    },
                    child: const Text("8"),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      pressButton('9');
                    },
                    child: const Text("9"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      sqrAction();
                    },
                    child: const Text("^"),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      pressButton('0');
                    },
                    child: const Text("0"),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      num1Controller;
                    },
                    child: const Text("="),
                  ),
                ],
              )
        ],
      ),
    );
  }

  //--- Functions---
  errorSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('숫자를 입력하세요!'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
        ),
    );
  }

  sqrAction(){
    if(num1Controller.text.trim().isEmpty){
      errorSnackBar();
    }else{
      num1Controller.text = (int.parse(num1Controller.text.trim()) * int.parse(num1Controller.text.trim())).toString();
    }
    setState(() {});
  }

  pressButton(String num){
      num1Controller.text = num1Controller.text == '0' ? '' : num1Controller.text;
      num1Controller.text += num;
    setState(() {});
    }
  
  clearButton(){
    num1Controller.text = '0';
    setState(() {});
  }
} //End