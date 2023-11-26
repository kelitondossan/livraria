import 'package:flutter/material.dart';
import '../models/livro.dart';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
class LivroView extends StatefulWidget {
  final Livro livro;

  const LivroView({Key? key, required this.livro}) : super(key: key);

  @override
  _LivroViewState createState() => _LivroViewState();
}

class _LivroViewState extends State<LivroView> {
  bool livroDownloadado = false;

  static const String _caminhoDaPastaLivros = 'livros_baixados';

  @override
  void initState() {
    super.initState();
    // Verificar se o livro já está baixado
    _verificarDownload();
  }

Future<void> _verificarDownload() async {
  final localFile = File('${(await getApplicationDocumentsDirectory()).path}/$_caminhoDaPastaLivros/${widget.livro.id}.epub');
  if (localFile.existsSync()) {
    setState(() {
      livroDownloadado = true;
    });
  }
}
 Future<void> _baixarLivro(String downloadUrl) async {
  try {
    // Criar um diretório para armazenar os livros baixados
    final directory =  Directory(_caminhoDaPastaLivros);
    if (!directory.existsSync()) {
      directory.createSync();
    }

    // Criar um arquivo local para armazenar o livro
    final localFile = File('${_caminhoDaPastaLivros}/${widget.livro.id}.epub');

    // Verificar se o arquivo já existe
    if (localFile.existsSync()) {
      // O arquivo já existe, então não é necessário baixá-lo novamente
      return;
    }

    // Realizar o download do livro e escrever os dados no arquivo local
    final response = await Dio().download(downloadUrl, localFile.path);

    // Verificar se o download foi bem-sucedido
    if (response.statusCode == 200) {
      // Atualizar o estado para indicar que o livro foi baixado
      setState(() {
        livroDownloadado = true;
      });
    } else {
      print('Erro ao baixar o livro. Código de resposta: ${response.statusCode}');
    }
  } catch (e) {
    print('Erro ao baixar o livro: $e');
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.livro.title),
      ),
      body: !livroDownloadado
          ? _criarBotaoDownload()
          : _criarVisualizadorDeLivro(),
    );
  }

  Widget _criarBotaoDownload() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Livro não baixado",
            style: TextStyle(),
          ),
          ElevatedButton(
            onPressed: () {
              _baixarLivro(widget.livro.downloadUrl);
            },
            child: const Text("Baixar Livro"),
          ),
        ],
      ),
    );
  }

  Widget _criarVisualizadorDeLivro() {
    // Adicione aqui a lógica para exibir o conteúdo do livro.
    // Você pode usar um Widget personalizado ou outro pacote para visualizar o conteúdo do livro.
    // Por favor, ajuste conforme necessário.
    return Container(
      child: const Text("Visualizador de Livro"),
    );
  }
}