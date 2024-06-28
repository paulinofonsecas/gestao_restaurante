import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gestao_restaurante/dados/entidades/produto_model.dart';

abstract class IProdutoFirebase {
  Future<List<ProdutoModel>> getProdutos();
  Future<ProdutoModel> getProduto(String id);
  Future<ProdutoModel> addProduto(ProdutoModel produto);
  Future<ProdutoModel> updateProduto(ProdutoModel produto);
  Future<void> deleteProduto(String id);
}

class ProdutoFirebase implements IProdutoFirebase {
  final FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  Future<ProdutoModel> addProduto(ProdutoModel produto) async {
    try {
      await db.collection('produtos').add(produto.toMap());
      return Future.value(produto);
    } catch (e) {
      return Future.error(e);
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
      final snapshot = await db.collection('produtos').get();
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
