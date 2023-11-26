
import 'package:flutter_test/flutter_test.dart';
import 'package:livros/models/livro.dart';

import 'package:livros/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Criar uma lista de livros fictícia para passar para MyApp
 List<Livro> livros = [
      Livro(id: 1, title: 'Livro 1', author: 'Autor 1', coverUrl: 'capa1.jpg', downloadUrl: 'download1.epub'),
      Livro(id: 2, title: 'Livro 2', author: 'Autor 2', coverUrl: 'capa2.jpg', downloadUrl: 'download2.epub'),
    ];
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp(livros: livros));

    // Restante do teste...
  });
}