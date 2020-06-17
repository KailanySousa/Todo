import 'package:flutter/material.dart'; // referência do layout a ser utlizado na aplicação (android ou ios);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold - faz com que o Widget assume o estilo de uma página
      appBar: AppBar(
        title: Center(
          child: Text("Todo List"),
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Olá mundo"),
        ),
      ),
    );
  }
}
