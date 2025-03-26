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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 5, 255, 5)),
      ),
      home: const MyHomePage(title: 'Flutter is Fun!'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 150, 37),
        title: Text(widget.title),
      ),
      body: Align(
        alignment: Alignment.centerLeft, // Alinha o Container na parte inferior
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4, // 80% da largura da tela (estreito nas laterais)
          height: 180, // Altura maior na parte de baixo
          margin: const EdgeInsets.only(bottom: 400, left: 80 ), // Espaço da parte inferior
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          child: Container(
            alignment: Alignment.topCenter,
            child: Text(
              'Hi Mom🔥',
              style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}