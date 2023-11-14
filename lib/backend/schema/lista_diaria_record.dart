import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListaDiariaRecord extends FirestoreRecord {
  ListaDiariaRecord._(
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

  // "SucursalDestino" field.
  String? _sucursalDestino;
  String get sucursalDestino => _sucursalDestino ?? '';
  bool hasSucursalDestino() => _sucursalDestino != null;

  // "FechaDeEntrega" field.
  DateTime? _fechaDeEntrega;
  DateTime? get fechaDeEntrega => _fechaDeEntrega;
  bool hasFechaDeEntrega() => _fechaDeEntrega != null;

  void _initializeFields() {
    _productosDescripcion = snapshotData['ProductosDescripcion'] as String?;
    _productosCantidad = castToType<double>(snapshotData['ProductosCantidad']);
    _productosCategoria = snapshotData['ProductosCategoria'] as String?;
    _productosUnidad = snapshotData['ProductosUnidad'] as String?;
    _sucursalDestino = snapshotData['SucursalDestino'] as String?;
    _fechaDeEntrega = snapshotData['FechaDeEntrega'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ListaDiaria');

  static Stream<ListaDiariaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListaDiariaRecord.fromSnapshot(s));

  static Future<ListaDiariaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListaDiariaRecord.fromSnapshot(s));

  static ListaDiariaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListaDiariaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListaDiariaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListaDiariaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListaDiariaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListaDiariaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListaDiariaRecordData({
  String? productosDescripcion,
  double? productosCantidad,
  String? productosCategoria,
  String? productosUnidad,
  String? sucursalDestino,
  DateTime? fechaDeEntrega,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ProductosDescripcion': productosDescripcion,
      'ProductosCantidad': productosCantidad,
      'ProductosCategoria': productosCategoria,
      'ProductosUnidad': productosUnidad,
      'SucursalDestino': sucursalDestino,
      'FechaDeEntrega': fechaDeEntrega,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListaDiariaRecordDocumentEquality implements Equality<ListaDiariaRecord> {
  const ListaDiariaRecordDocumentEquality();

  @override
  bool equals(ListaDiariaRecord? e1, ListaDiariaRecord? e2) {
    return e1?.productosDescripcion == e2?.productosDescripcion &&
        e1?.productosCantidad == e2?.productosCantidad &&
        e1?.productosCategoria == e2?.productosCategoria &&
        e1?.productosUnidad == e2?.productosUnidad &&
        e1?.sucursalDestino == e2?.sucursalDestino &&
        e1?.fechaDeEntrega == e2?.fechaDeEntrega;
  }

  @override
  int hash(ListaDiariaRecord? e) => const ListEquality().hash([
        e?.productosDescripcion,
        e?.productosCantidad,
        e?.productosCategoria,
        e?.productosUnidad,
        e?.sucursalDestino,
        e?.fechaDeEntrega
      ]);

  @override
  bool isValidKey(Object? o) => o is ListaDiariaRecord;
}
