import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'favourites_record.g.dart';

abstract class FavouritesRecord
    implements Built<FavouritesRecord, FavouritesRecordBuilder> {
  static Serializer<FavouritesRecord> get serializer =>
      _$favouritesRecordSerializer;

  @nullable
  String get uid;

  @nullable
  String get model;

  @nullable
  String get name;

  @nullable
  double get price;

  @nullable
  String get imagePath;

  @nullable
  double get quantity;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FavouritesRecordBuilder builder) => builder
    ..uid = ''
    ..model = ''
    ..name = ''
    ..price = 0.0
    ..imagePath = ''
    ..quantity = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('favourites');

  static Stream<FavouritesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FavouritesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FavouritesRecord._();
  factory FavouritesRecord([void Function(FavouritesRecordBuilder) updates]) =
      _$FavouritesRecord;

  static FavouritesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFavouritesRecordData({
  String uid,
  String model,
  String name,
  double price,
  String imagePath,
  double quantity,
}) =>
    serializers.toFirestore(
        FavouritesRecord.serializer,
        FavouritesRecord((f) => f
          ..uid = uid
          ..model = model
          ..name = name
          ..price = price
          ..imagePath = imagePath
          ..quantity = quantity));
