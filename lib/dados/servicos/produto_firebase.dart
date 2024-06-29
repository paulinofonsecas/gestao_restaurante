import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:gestao_restaurante/dados/entidades/produto_model.dart';
import 'package:uuid/uuid.dart';

abstract class IProdutoFirebase {
  Future<List<ProdutoModel>> getProdutos();
  Future<ProdutoModel> getProduto(String id);
  Future<ProdutoModel> addProduto(ProdutoModel produto);
  Future<ProdutoModel> updateProduto(ProdutoModel produto);
  Future<void> deleteProduto(String id);
}

class ProdutoFirebase implements IProdutoFirebase {
  final db = FirebaseFirestore.instance;
  final storage = FirebaseStorage.instance;

  Future<List<String>?> _saveImages(ProdutoModel model) async {
    final resultUrls = <String>[];

    if (model.imagemUrl.isNotEmpty) {
      for (final url in model.imagemUrl) {
        final ref = storage.ref('produto_imagens').child(const Uuid().v4());
        await ref.putFile(File(url)).then((value) async {
          resultUrls.add(await value.ref.getDownloadURL());
        });
      }

      return resultUrls;
    } else {
      return null;
    }
  }

  @override
  Future<ProdutoModel> addProduto(ProdutoModel produto) async {
    try {
      final imagemUrls = await _saveImages(produto);
      final model = produto.copyWith(imagemUrl: imagemUrls ?? []);

      await db.collection('produtos').add(model.toMap());
      return produto;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteProduto(String id) async {
    try {
      await db.collection('produtos').doc(id).delete();
      return Future.value();
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<ProdutoModel> getProduto(String id) async {
    try {
      final snapshot = await db.collection('produtos').doc(id).get();
      return Future.value(ProdutoModel.fromMap(snapshot.data()!));
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<List<ProdutoModel>> getProdutos() async {
    try {
      final snapshot = await db.collection('produtos').get().then((value) {
        value.docs.map((doc) => doc.data()).toList();
        return value;
      });

      return Future.value(
        snapshot.docs.map((doc) => ProdutoModel.fromMap(doc.data())).toList(),
      );
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<ProdutoModel> updateProduto(ProdutoModel produto) async {
    try {
      await db.collection('produtos').doc(produto.id).update(produto.toMap());
      return Future.value(produto);
    } catch (e) {
      return Future.error(e);
    }
  }
}
