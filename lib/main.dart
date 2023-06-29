import 'package:flutter/material.dart';
import 'display.dart';
import 'keypad.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String input = '0';
  String output = '0';

  @override
  Widget build(BuildContext context) {
    Size  size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          MyDisplay(screenSize: size, input: input, output: output),
          const MyKeys()
        ],
      )
    );
  }
}
