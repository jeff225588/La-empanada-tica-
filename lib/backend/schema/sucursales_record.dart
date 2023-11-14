import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SucursalesRecord extends FirestoreRecord {
  SucursalesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "SucursalesNombre" field.
  String? _sucursalesNombre;
  String get sucursalesNombre => _sucursalesNombre ?? '';
  bool hasSucursalesNombre() => _sucursalesNombre != null;

  // "SucursalesUbicacion" field.
  String? _sucursalesUbicacion;
  String get sucursalesUbicacion => _sucursalesUbicacion ?? '';
  bool hasSucursalesUbicacion() => _sucursalesUbicacion != null;

  // "SucursalesDetalles" field.
  String? _sucursalesDetalles;
  String get sucursalesDetalles => _sucursalesDetalles ?? '';
  bool hasSucursalesDetalles() => _sucursalesDetalles != null;

  void _initializeFields() {
    _sucursalesNombre = snapshotData['SucursalesNombre'] as String?;
    _sucursalesUbicacion = snapshotData['SucursalesUbicacion'] as String?;
    _sucursalesDetalles = snapshotData['SucursalesDetalles'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Sucursales');

  static Stream<SucursalesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SucursalesRecord.fromSnapshot(s));

  static Future<SucursalesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SucursalesRecord.fromSnapshot(s));

  static SucursalesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SucursalesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SucursalesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SucursalesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SucursalesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SucursalesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSucursalesRecordData({
  String? sucursalesNombre,
  String? sucursalesUbicacion,
  String? sucursalesDetalles,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'SucursalesNombre': sucursalesNombre,
      'SucursalesUbicacion': sucursalesUbicacion,
      'SucursalesDetalles': sucursalesDetalles,
    }.withoutNulls,
  );

  return firestoreData;
}

class SucursalesRecordDocumentEquality implements Equality<SucursalesRecord> {
  const SucursalesRecordDocumentEquality();

  @override
  bool equals(SucursalesRecord? e1, SucursalesRecord? e2) {
    return e1?.sucursalesNombre == e2?.sucursalesNombre &&
        e1?.sucursalesUbicacion == e2?.sucursalesUbicacion &&
        e1?.sucursalesDetalles == e2?.sucursalesDetalles;
  }

  @override
  int hash(SucursalesRecord? e) => const ListEquality().hash(
      [e?.sucursalesNombre, e?.sucursalesUbicacion, e?.sucursalesDetalles]);

  @override
  bool isValidKey(Object? o) => o is SucursalesRecord;
}
