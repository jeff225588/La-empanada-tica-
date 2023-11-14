import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosCategoriaRecord extends FirestoreRecord {
  ProductosCategoriaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ProductosCategoriaNombre" field.
  String? _productosCategoriaNombre;
  String get productosCategoriaNombre => _productosCategoriaNombre ?? '';
  bool hasProductosCategoriaNombre() => _productosCategoriaNombre != null;

  void _initializeFields() {
    _productosCategoriaNombre =
        snapshotData['ProductosCategoriaNombre'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProductosCategoria');

  static Stream<ProductosCategoriaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosCategoriaRecord.fromSnapshot(s));

  static Future<ProductosCategoriaRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ProductosCategoriaRecord.fromSnapshot(s));

  static ProductosCategoriaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosCategoriaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosCategoriaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosCategoriaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosCategoriaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosCategoriaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosCategoriaRecordData({
  String? productosCategoriaNombre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ProductosCategoriaNombre': productosCategoriaNombre,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosCategoriaRecordDocumentEquality
    implements Equality<ProductosCategoriaRecord> {
  const ProductosCategoriaRecordDocumentEquality();

  @override
  bool equals(ProductosCategoriaRecord? e1, ProductosCategoriaRecord? e2) {
    return e1?.productosCategoriaNombre == e2?.productosCategoriaNombre;
  }

  @override
  int hash(ProductosCategoriaRecord? e) =>
      const ListEquality().hash([e?.productosCategoriaNombre]);

  @override
  bool isValidKey(Object? o) => o is ProductosCategoriaRecord;
}
