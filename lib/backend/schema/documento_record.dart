import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class DocumentoRecord extends FirestoreRecord {
  DocumentoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "autor" field.
  String? _autor;
  String get autor => _autor ?? '';
  bool hasAutor() => _autor != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "publicacion" field.
  DateTime? _publicacion;
  DateTime? get publicacion => _publicacion;
  bool hasPublicacion() => _publicacion != null;

  // "pdf" field.
  DocumentReference? _pdf;
  DocumentReference? get pdf => _pdf;
  bool hasPdf() => _pdf != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _autor = snapshotData['autor'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _publicacion = snapshotData['publicacion'] as DateTime?;
    _pdf = snapshotData['pdf'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('documento');

  static Stream<DocumentoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocumentoRecord.fromSnapshot(s));

  static Future<DocumentoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocumentoRecord.fromSnapshot(s));

  static DocumentoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocumentoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocumentoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocumentoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocumentoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocumentoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDocumentoRecordData({
  String? nombre,
  String? autor,
  String? tipo,
  DateTime? publicacion,
  DocumentReference? pdf,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'autor': autor,
      'tipo': tipo,
      'publicacion': publicacion,
      'pdf': pdf,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocumentoRecordDocumentEquality implements Equality<DocumentoRecord> {
  const DocumentoRecordDocumentEquality();

  @override
  bool equals(DocumentoRecord? e1, DocumentoRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.autor == e2?.autor &&
        e1?.tipo == e2?.tipo &&
        e1?.publicacion == e2?.publicacion &&
        e1?.pdf == e2?.pdf;
  }

  @override
  int hash(DocumentoRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.autor, e?.tipo, e?.publicacion, e?.pdf]);

  @override
  bool isValidKey(Object? o) => o is DocumentoRecord;
}
