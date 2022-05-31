import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'components_record.g.dart';

abstract class ComponentsRecord
    implements Built<ComponentsRecord, ComponentsRecordBuilder> {
  static Serializer<ComponentsRecord> get serializer =>
      _$componentsRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get modelno;

  @nullable
  double get price;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ComponentsRecordBuilder builder) => builder
    ..name = ''
    ..modelno = ''
    ..price = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('components');

  static Stream<ComponentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ComponentsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ComponentsRecord._();
  factory ComponentsRecord([void Function(ComponentsRecordBuilder) updates]) =
      _$ComponentsRecord;

  static ComponentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createComponentsRecordData({
  String name,
  String modelno,
  double price,
}) =>
    serializers.toFirestore(
        ComponentsRecord.serializer,
        ComponentsRecord((c) => c
          ..name = name
          ..modelno = modelno
          ..price = price));
