import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'products_record.g.dart';

abstract class ProductsRecord
    implements Built<ProductsRecord, ProductsRecordBuilder> {
  static Serializer<ProductsRecord> get serializer =>
      _$productsRecordSerializer;

  @nullable
  String get modelno;

  @nullable
  String get name;

  @nullable
  double get price;

  @nullable
  String get image;

  @nullable
  String get category;

  @nullable
  String get cpu;

  @nullable
  String get gpu;

  @nullable
  String get ram;

  @nullable
  String get storage;

  @nullable
  String get stock;

  @nullable
  String get psu;

  @nullable
  String get type;

  @nullable
  String get motherboard;

  @nullable
  BuiltList<DocumentReference> get favoritos;

  @nullable
  BuiltList<bool> get cart;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProductsRecordBuilder builder) => builder
    ..modelno = ''
    ..name = ''
    ..price = 0.0
    ..image = ''
    ..category = ''
    ..cpu = ''
    ..gpu = ''
    ..ram = ''
    ..storage = ''
    ..stock = ''
    ..psu = ''
    ..type = ''
    ..motherboard = ''
    ..favoritos = ListBuilder()
    ..cart = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProductsRecord._();
  factory ProductsRecord([void Function(ProductsRecordBuilder) updates]) =
      _$ProductsRecord;

  static ProductsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProductsRecordData({
  String modelno,
  String name,
  double price,
  String image,
  String category,
  String cpu,
  String gpu,
  String ram,
  String storage,
  String stock,
  String psu,
  String type,
  String motherboard,
}) =>
    serializers.toFirestore(
        ProductsRecord.serializer,
        ProductsRecord((p) => p
          ..modelno = modelno
          ..name = name
          ..price = price
          ..image = image
          ..category = category
          ..cpu = cpu
          ..gpu = gpu
          ..ram = ram
          ..storage = storage
          ..stock = stock
          ..psu = psu
          ..type = type
          ..motherboard = motherboard
          ..favoritos = null
          ..cart = null));
