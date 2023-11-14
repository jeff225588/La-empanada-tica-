import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosRecord extends FirestoreRecord {
  ProductosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ProductosDescripcion" field.
  String? _productosDescripcion;
  String get productosDescripcion => _productosDescripcion ?? '';
  bool hasProductosDescripcion() => _productosDescripcion != null;

  // "ProductosCantidad" field.
  double? _productosCantidad;
  double get productosCantidad => _productosCantidad ?? 0.0;
  bool hasProductosCantidad() => _productosCantidad != null;

  // "ProductosCategoria" field.
  String? _productosCategoria;
  String get productosCategoria => _productosCategoria ?? '';
  bool hasProductosCategoria() => _productosCategoria != null;

  // "ProductosUnidad" field.
  String? _productosUnidad;
  String get productosUnidad => _productosUnidad ?? '';
  bool hasProductosUnidad() => _productosUnidad != null;

  void _initializeFields() {
    _productosDescripcion = snapshotData['ProductosDescripcion'] as String?;
    _productosCantidad = castToType<double>(snapshotData['ProductosCantidad']);
    _productosCategoria = snapshotData['ProductosCategoria'] as String?;
    _productosUnidad = snapshotData['ProductosUnidad'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosRecord.fromSnapshot(s));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosRecord.fromSnapshot(s));

  static ProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosRecordData({
  String? productosDescripcion,
  double? productosCantidad,
  String? productosCategoria,
  String? productosUnidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ProductosDescripcion': productosDescripcion,
      'ProductosCantidad': productosCantidad,
      'ProductosCategoria': productosCategoria,
      'ProductosUnidad': productosUnidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosRecordDocumentEquality implements Equality<ProductosRecord> {
  const ProductosRecordDocumentEquality();

  @override
  bool equals(ProductosRecord? e1, ProductosRecord? e2) {
    return e1?.productosDescripcion == e2?.productosDescripcion &&
        e1?.productosCantidad == e2?.productosCantidad &&
        e1?.productosCategoria == e2?.productosCategoria &&
        e1?.productosUnidad == e2?.productosUnidad;
  }

  @override
  int hash(ProductosRecord? e) => const ListEquality().hash([
        e?.productosDescripcion,
        e?.productosCantidad,
        e?.productosCategoria,
        e?.productosUnidad
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductosRecord;
}
