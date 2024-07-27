import 'package:flutter/material.dart';

class Sub extends StatefulWidget {
  const Sub({super.key});

  @override
  State<Sub> createState() => _SubState();
}

class _SubState extends State<Sub> {
  // Property
  late TextEditingController viewNum; //
  late double num1;
  late double num2;
// 나누기결과 문자값으로 설정

  @override
  void initState() {
    super.initState();
    viewNum = TextEditingController();
    viewNum.text = '0';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('(-)계산기'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: viewNum,
              decoration: InputDecoration(
                labelText: '계산결과',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () => writeNum('7'),
                    child: Text(
                      '7',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => writeNum('8'),
                    child: Text(
                      '8',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => writeNum('9'),
                    child: Text(
                      '9',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () => writeNum('4'),
                    child: Text(
                      '4',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => writeNum('5'),
                    child: Text(
                      '5',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => writeNum('6'),
                    child: Text(
                      '6',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () => writeNum('1'),
                    child: Text(
                      '1',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => writeNum('2'),
                    child: Text(
                      '2',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => writeNum('3'),
                    child: Text(
                      '3',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () => writeNum('0'),
                    child: Text(
                      '0',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => subButton(),
                    child: Text(
                      '-',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => equalButton(),
                    child: Text(
                      '=',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () => clearButton(),
                    child: Text(
                      'AC',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(175, 30),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  writeNum(String num) {
    if (num == '') {
      viewNum.text += num;
    } else {
      viewNum.text = viewNum.text == '0' ? '' : viewNum.text;
      viewNum.text += num;
    }
  }

  subButton() {
    num1 = double.parse(viewNum.text);
    viewNum.text = '0';
    setState(() {});
  }

  equalButton() {
    num2 = double.parse(viewNum.text);
    dynamic result = num1 - num2;
    if (result % 1 == 0) {
      result = result.toInt();
    }
    viewNum.text = result.toString();
  }

  clearButton() {
    viewNum.text = '0';
    setState(() {});
  }
}
