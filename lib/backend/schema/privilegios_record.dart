import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PrivilegiosRecord extends FirestoreRecord {
  PrivilegiosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreprivilegio" field.
  String? _nombreprivilegio;
  String get nombreprivilegio => _nombreprivilegio ?? '';
  bool hasNombreprivilegio() => _nombreprivilegio != null;

  // "nombrePrivilegio" field.
  String? _nombrePrivilegio;
  String get nombrePrivilegio => _nombrePrivilegio ?? '';
  bool hasNombrePrivilegio() => _nombrePrivilegio != null;

  void _initializeFields() {
    _nombreprivilegio = snapshotData['nombreprivilegio'] as String?;
    _nombrePrivilegio = snapshotData['nombrePrivilegio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('privilegios');

  static Stream<PrivilegiosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PrivilegiosRecord.fromSnapshot(s));

  static Future<PrivilegiosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PrivilegiosRecord.fromSnapshot(s));

  static PrivilegiosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PrivilegiosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PrivilegiosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PrivilegiosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PrivilegiosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PrivilegiosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPrivilegiosRecordData({
  String? nombreprivilegio,
  String? nombrePrivilegio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreprivilegio': nombreprivilegio,
      'nombrePrivilegio': nombrePrivilegio,
    }.withoutNulls,
  );

  return firestoreData;
}

class PrivilegiosRecordDocumentEquality implements Equality<PrivilegiosRecord> {
  const PrivilegiosRecordDocumentEquality();

  @override
  bool equals(PrivilegiosRecord? e1, PrivilegiosRecord? e2) {
    return e1?.nombreprivilegio == e2?.nombreprivilegio &&
        e1?.nombrePrivilegio == e2?.nombrePrivilegio;
  }

  @override
  int hash(PrivilegiosRecord? e) =>
      const ListEquality().hash([e?.nombreprivilegio, e?.nombrePrivilegio]);

  @override
  bool isValidKey(Object? o) => o is PrivilegiosRecord;
}
