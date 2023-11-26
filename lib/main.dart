import 'package:flutter/material.dart';
import 'package:livros/models/livro.dart';
import 'views/estante.dart';
import 'services/api.dart'; // Importe a função baixarListaDeLivros

void main() async {
  // Baixe a lista de livros antes de criar o widget MyApp
  List<Livro> livros = await baixarListaDeLivros();

  runApp(MyApp(livros: livros));
}

class MyApp extends StatelessWidget {
  final List<Livro> livros;

  const MyApp({super.key, required this.livros});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Livros App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EstanteView(livros: livros),
    );
  }
}
