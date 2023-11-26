import 'package:flutter/material.dart';
import '../models/livro.dart';
import 'livro.dart';

class EstanteView extends StatelessWidget {
  final List<Livro> livros;

  const EstanteView({Key? key, required this.livros}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Estante de Livros"),
      ),
      body: ListView(
        children: livros.map((livro) => LivroItem(livro: livro)).toList(),
      ),
    );
  }
}

class LivroItem extends StatelessWidget {
  final Livro livro;

  const LivroItem({Key? key, required this.livro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LivroView(livro: livro),
          ),
        );
      },
      child: Card(
        child: ListTile(
          leading: Image.network(livro.coverUrl),
          title: Text(livro.title),
          subtitle: Text(livro.author),
          
        ),
      ),
    );
  }
}
