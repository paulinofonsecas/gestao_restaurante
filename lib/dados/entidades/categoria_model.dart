// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CategoriaModel {
  final String id;
  final String descricao;
  CategoriaModel({
    required this.id,
    required this.descricao,
  });

  CategoriaModel copyWith({
    String? id,
    String? descricao,
  }) {
    return CategoriaModel(
      id: id ?? this.id,
      descricao: descricao ?? this.descricao,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'descricao': descricao,
    };
  }

  factory CategoriaModel.fake() {
    return CategoriaModel(
      id: 'id',
      descricao: 'descricao',
    );
  }
  factory CategoriaModel.fromMap(Map<String, dynamic> map) {
    return CategoriaModel(
      id: map['id'] as String,
      descricao: map['descricao'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoriaModel.fromJson(String source) =>
      CategoriaModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CategoriaModel(id: $id, descricao: $descricao)';

  @override
  bool operator ==(covariant CategoriaModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.descricao == descricao;
  }

  @override
  int get hashCode => id.hashCode ^ descricao.hashCode;
}
