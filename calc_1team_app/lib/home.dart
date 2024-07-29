import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/add');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      foregroundColor: Colors.white),
                  child: const Icon(Icons.add)),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sub');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white),
                  child: const Icon(Icons.remove)),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/mul');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lime,
                      foregroundColor: Colors.white),
                  child: const Text("X")),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/div');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      foregroundColor: Colors.white),
                  child: const Text("÷")),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/squ');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.white),
                  child: const Text("^")),
            ),
          ],
        ),
      ),
    );
  }
}
