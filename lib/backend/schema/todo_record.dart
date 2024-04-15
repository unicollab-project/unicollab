import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TodoRecord extends FirestoreRecord {
  TodoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "task_name" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  bool hasTaskName() => _taskName != null;

  // "task_deadline" field.
  DateTime? _taskDeadline;
  DateTime? get taskDeadline => _taskDeadline;
  bool hasTaskDeadline() => _taskDeadline != null;

  void _initializeFields() {
    _taskName = snapshotData['task_name'] as String?;
    _taskDeadline = snapshotData['task_deadline'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('todo');

  static Stream<TodoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TodoRecord.fromSnapshot(s));

  static Future<TodoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TodoRecord.fromSnapshot(s));

  static TodoRecord fromSnapshot(DocumentSnapshot snapshot) => TodoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TodoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TodoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TodoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TodoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTodoRecordData({
  String? taskName,
  DateTime? taskDeadline,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'task_name': taskName,
      'task_deadline': taskDeadline,
    }.withoutNulls,
  );

  return firestoreData;
}

class TodoRecordDocumentEquality implements Equality<TodoRecord> {
  const TodoRecordDocumentEquality();

  @override
  bool equals(TodoRecord? e1, TodoRecord? e2) {
    return e1?.taskName == e2?.taskName && e1?.taskDeadline == e2?.taskDeadline;
  }

  @override
  int hash(TodoRecord? e) =>
      const ListEquality().hash([e?.taskName, e?.taskDeadline]);

  @override
  bool isValidKey(Object? o) => o is TodoRecord;
}
