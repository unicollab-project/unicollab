import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class GroupsRecord extends FirestoreRecord {
  GroupsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "college_name" field.
  String? _collegeName;
  String get collegeName => _collegeName ?? '';
  bool hasCollegeName() => _collegeName != null;

  // "branch_name" field.
  String? _branchName;
  String get branchName => _branchName ?? '';
  bool hasBranchName() => _branchName != null;

  // "user_name" field.
  List<DocumentReference>? _userName;
  List<DocumentReference> get userName => _userName ?? const [];
  bool hasUserName() => _userName != null;

  void _initializeFields() {
    _collegeName = snapshotData['college_name'] as String?;
    _branchName = snapshotData['branch_name'] as String?;
    _userName = getDataList(snapshotData['user_name']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('groups');

  static Stream<GroupsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupsRecord.fromSnapshot(s));

  static Future<GroupsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupsRecord.fromSnapshot(s));

  static GroupsRecord fromSnapshot(DocumentSnapshot snapshot) => GroupsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupsRecordData({
  String? collegeName,
  String? branchName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'college_name': collegeName,
      'branch_name': branchName,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroupsRecordDocumentEquality implements Equality<GroupsRecord> {
  const GroupsRecordDocumentEquality();

  @override
  bool equals(GroupsRecord? e1, GroupsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.collegeName == e2?.collegeName &&
        e1?.branchName == e2?.branchName &&
        listEquality.equals(e1?.userName, e2?.userName);
  }

  @override
  int hash(GroupsRecord? e) =>
      const ListEquality().hash([e?.collegeName, e?.branchName, e?.userName]);

  @override
  bool isValidKey(Object? o) => o is GroupsRecord;
}
