import 'package:calc_1team_app/add.dart';
import 'package:calc_1team_app/div.dart';
import 'package:calc_1team_app/home.dart';
import 'package:calc_1team_app/mul.dart';
import 'package:calc_1team_app/squ.dart';
import 'package:calc_1team_app/sub.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const Home(),
        '/add': (context) => const Add(),
        '/sub': (context) => const Sub(),
        '/mul': (context) => const Mul(),
        '/div': (context) => const Div(),
        '/squ': (context) => const Squ(),
      },
      initialRoute: '/',
    );
  }
}
