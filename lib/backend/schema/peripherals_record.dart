import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'peripherals_record.g.dart';

abstract class PeripheralsRecord
    implements Built<PeripheralsRecord, PeripheralsRecordBuilder> {
  static Serializer<PeripheralsRecord> get serializer =>
      _$peripheralsRecordSerializer;

  @nullable
  String get name;

  @nullable
  double get price;

  @nullable
  String get type;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PeripheralsRecordBuilder builder) => builder
    ..name = ''
    ..price = 0.0
    ..type = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('peripherals');

  static Stream<PeripheralsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PeripheralsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PeripheralsRecord._();
  factory PeripheralsRecord([void Function(PeripheralsRecordBuilder) updates]) =
      _$PeripheralsRecord;

  static PeripheralsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPeripheralsRecordData({
  String name,
  double price,
  String type,
}) =>
    serializers.toFirestore(
        PeripheralsRecord.serializer,
        PeripheralsRecord((p) => p
          ..name = name
          ..price = price
          ..type = type));
