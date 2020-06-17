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
    items.add(Item(title: "Dormir", done: false));
    items.add(Item(title: "Acordar", done: true));
    items.add(Item(title: "Levantar", done: false));
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
            final item = widget.items[index];
            return CheckboxListTile(
              // criando lista com checkbox
              title: Text(item.title),
              key: Key(item.title),
              value: item.done,
              onChanged: (value) {
                setState(() {
                  item.done = value;
                });
              },
            );
          },
        ));
  }
}
