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
                onPressed: (){
                  Navigator.pushNamed(context, '/add');
                },
                child: Icon(Icons.add)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/sub');
                },
                child: Icon(Icons.remove)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/mul');
                },
                child: Text("X")
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/div');
                },
                child: Text("÷")
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/squ');
                },
                child: Text("^")
              ),
            ),
          ],
        ),
      ),
    );
  }
}