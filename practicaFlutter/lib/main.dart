import 'package:flutter/material.dart';
import 'screens/lista.screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PROBANDO FLUTTER',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //const MyHomePage({super.key, required this.title});
  const MyHomePage({Key? key}) : super(key: key);
  //final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
// const ListScreen()
    return Scaffold(
        appBar: AppBar(
          title: Text('Leixer Steeven Lucas Mero - Email 7"B"'),
          centerTitle: true,
        ),
        body: const ListScreen());
  }
}//ListScreen()

        