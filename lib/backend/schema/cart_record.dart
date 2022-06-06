import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cart_record.g.dart';

abstract class CartRecord implements Built<CartRecord, CartRecordBuilder> {
  static Serializer<CartRecord> get serializer => _$cartRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'created_by')
  DocumentReference get createdBy;

  @nullable
  DocumentReference get item;

  @nullable
  String get name;

  @nullable
  double get price;

  @nullable
  String get uid;

  @nullable
  double get quantity;

  @nullable
  String get imagePath;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CartRecordBuilder builder) => builder
    ..name = ''
    ..price = 0.0
    ..uid = ''
    ..quantity = 0.0
    ..imagePath = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CartRecord._();
  factory CartRecord([void Function(CartRecordBuilder) updates]) = _$CartRecord;

  static CartRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCartRecordData({
  DocumentReference createdBy,
  DocumentReference item,
  String name,
  double price,
  String uid,
  double quantity,
  String imagePath,
}) =>
    serializers.toFirestore(
        CartRecord.serializer,
        CartRecord((c) => c
          ..createdBy = createdBy
          ..item = item
          ..name = name
          ..price = price
          ..uid = uid
          ..quantity = quantity
          ..imagePath = imagePath));
