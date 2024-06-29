// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:gestao_restaurante/dados/entidades/categoria_model.dart';

class ProdutoModel {
  final String id;
  final String nome;
  final String descricao;
  final List<String> imagemUrl;
  final double preco;
  final CategoriaModel categoria;
  final bool disponibilidade;
  ProdutoModel({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.imagemUrl,
    required this.preco,
    required this.categoria,
    required this.disponibilidade,
  });

  ProdutoModel copyWith({
    String? id,
    String? nome,
    String? descricao,
    List<String>? imagemUrl,
    double? preco,
    CategoriaModel? categoria,
    bool? disponibilidade,
  }) {
    return ProdutoModel(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      imagemUrl: imagemUrl ?? this.imagemUrl,
      preco: preco ?? this.preco,
      categoria: categoria ?? this.categoria,
      disponibilidade: disponibilidade ?? this.disponibilidade,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'descricao': descricao,
      'imagemUrl': imagemUrl,
      'preco': preco,
      'categoria': categoria.toMap(),
      'disponibilidade': disponibilidade,
    };
  }

  factory ProdutoModel.fake() {
    return ProdutoModel(
      id: 'fake',
      nome: 'fake',
      descricao: 'fake',
      imagemUrl: [
        'https://images.unsplash.com/photo-1516865131505-4dabf2efc692?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ],
      preco: 0,
      categoria: CategoriaModel.fake(),
      disponibilidade: true,
    );
  }

  factory ProdutoModel.fromMap(Map<String, dynamic> map) {
    return ProdutoModel(
      id: map['id'] as String,
      nome: map['nome'] as String,
      descricao: map['descricao'] as String,
      imagemUrl: List<String>.from(map['imagemUrl'] as List<dynamic>),
      preco: map['preco'] as double,
      categoria:
          CategoriaModel.fromMap(map['categoria'] as Map<String, dynamic>),
      disponibilidade: map['disponibilidade'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdutoModel.fromJson(String source) =>
      ProdutoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProdutoModel(id: $id, nome: $nome, descricao: $descricao, imagemUrl: $imagemUrl, preco: $preco, categoria: $categoria, disponibilidade: $disponibilidade)';
  }

  @override
  bool operator ==(covariant ProdutoModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.nome == nome &&
        other.descricao == descricao &&
        listEquals(other.imagemUrl, imagemUrl) &&
        other.preco == preco &&
        other.categoria == categoria &&
        other.disponibilidade == disponibilidade;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nome.hashCode ^
        descricao.hashCode ^
        imagemUrl.hashCode ^
        preco.hashCode ^
        categoria.hashCode ^
        disponibilidade.hashCode;
  }
}
