class Livro {
  final int id;
  final String title;
  final String author;
  final String coverUrl;
  final String downloadUrl;

  Livro({
    required this.id,
    required this.title,
    required this.author,
    required this.coverUrl,
    required this.downloadUrl,
  });

  factory Livro.fromJson(Map<String, dynamic> json) {
    return Livro(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      coverUrl: json['cover_url'],
      downloadUrl: json['download_url'],
    );
  }
}

  // Getters adicionados
  String getCapa() {
    return getCapa();
  }

  String getTitulo() {
    return getTitulo();
  }

  String getAutor() {
    return getAutor();
  }
