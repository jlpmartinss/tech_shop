import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'desktops_record.g.dart';

abstract class DesktopsRecord
    implements Built<DesktopsRecord, DesktopsRecordBuilder> {
  static Serializer<DesktopsRecord> get serializer =>
      _$desktopsRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get cpu;

  @nullable
  String get gpu;

  @nullable
  String get modelno;

  @nullable
  String get motherboard;

  @nullable
  String get psu;

  @nullable
  String get ram;

  @nullable
  String get storage;

  @nullable
  double get price;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DesktopsRecordBuilder builder) => builder
    ..name = ''
    ..cpu = ''
    ..gpu = ''
    ..modelno = ''
    ..motherboard = ''
    ..psu = ''
    ..ram = ''
    ..storage = ''
    ..price = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('desktops');

  static Stream<DesktopsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DesktopsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DesktopsRecord._();
  factory DesktopsRecord([void Function(DesktopsRecordBuilder) updates]) =
      _$DesktopsRecord;

  static DesktopsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDesktopsRecordData({
  String name,
  String cpu,
  String gpu,
  String modelno,
  String motherboard,
  String psu,
  String ram,
  String storage,
  double price,
}) =>
    serializers.toFirestore(
        DesktopsRecord.serializer,
        DesktopsRecord((d) => d
          ..name = name
          ..cpu = cpu
          ..gpu = gpu
          ..modelno = modelno
          ..motherboard = motherboard
          ..psu = psu
          ..ram = ram
          ..storage = storage
          ..price = price));
