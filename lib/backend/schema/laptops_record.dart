import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'laptops_record.g.dart';

abstract class LaptopsRecord
    implements Built<LaptopsRecord, LaptopsRecordBuilder> {
  static Serializer<LaptopsRecord> get serializer => _$laptopsRecordSerializer;

  @nullable
  String get model;

  @nullable
  double get price;

  @nullable
  bool get stock;

  @nullable
  String get ram;

  @nullable
  String get cpu;

  @nullable
  String get gpu;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(LaptopsRecordBuilder builder) => builder
    ..model = ''
    ..price = 0.0
    ..stock = false
    ..ram = ''
    ..cpu = ''
    ..gpu = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('laptops');

  static Stream<LaptopsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<LaptopsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  LaptopsRecord._();
  factory LaptopsRecord([void Function(LaptopsRecordBuilder) updates]) =
      _$LaptopsRecord;

  static LaptopsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createLaptopsRecordData({
  String model,
  double price,
  bool stock,
  String ram,
  String cpu,
  String gpu,
}) =>
    serializers.toFirestore(
        LaptopsRecord.serializer,
        LaptopsRecord((l) => l
          ..model = model
          ..price = price
          ..stock = stock
          ..ram = ram
          ..cpu = cpu
          ..gpu = gpu));
