import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosUnidadRecord extends FirestoreRecord {
  ProductosUnidadRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ProductosUnidadNombre" field.
  String? _productosUnidadNombre;
  String get productosUnidadNombre => _productosUnidadNombre ?? '';
  bool hasProductosUnidadNombre() => _productosUnidadNombre != null;

  void _initializeFields() {
    _productosUnidadNombre = snapshotData['ProductosUnidadNombre'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProductosUnidad');

  static Stream<ProductosUnidadRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosUnidadRecord.fromSnapshot(s));

  static Future<ProductosUnidadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosUnidadRecord.fromSnapshot(s));

  static ProductosUnidadRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosUnidadRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosUnidadRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosUnidadRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosUnidadRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosUnidadRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosUnidadRecordData({
  String? productosUnidadNombre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ProductosUnidadNombre': productosUnidadNombre,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosUnidadRecordDocumentEquality
    implements Equality<ProductosUnidadRecord> {
  const ProductosUnidadRecordDocumentEquality();

  @override
  bool equals(ProductosUnidadRecord? e1, ProductosUnidadRecord? e2) {
    return e1?.productosUnidadNombre == e2?.productosUnidadNombre;
  }

  @override
  int hash(ProductosUnidadRecord? e) =>
      const ListEquality().hash([e?.productosUnidadNombre]);

  @override
  bool isValidKey(Object? o) => o is ProductosUnidadRecord;
}
