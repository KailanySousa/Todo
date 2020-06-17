import 'package:flutter/material.dart';
import 'package:todo/models/item.dart'; // referência do layout a ser utlizado na aplicação (android ou ios);

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

class HomePage extends StatefulWidget {
  var items = new List<Item>();

  // método construtor
  HomePage() {
    items = [];
    items.add(Item(title: "Item 1", done: false));
    items.add(Item(title: "Item 2", done: true));
    items.add(Item(title: "Item 3", done: false));
  }
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Scaffold - faz com que o Widget assume o estilo de uma página
        appBar: AppBar(
          title: Center(
            child: Text("Todo List"),
          ),
        ),
        body: ListView.builder(
          itemCount: widget.items.length, // tamanho da lista
          itemBuilder: (BuildContext context, int index) {
            // função para definir como os items serão montados na tela
            return Text(widget.items[index].title);
          },
        ));
  }
}
