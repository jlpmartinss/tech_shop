// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourites_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FavouritesRecord> _$favouritesRecordSerializer =
    new _$FavouritesRecordSerializer();

class _$FavouritesRecordSerializer
    implements StructuredSerializer<FavouritesRecord> {
  @override
  final Iterable<Type> types = const [FavouritesRecord, _$FavouritesRecord];
  @override
  final String wireName = 'FavouritesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, FavouritesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.model;
    if (value != null) {
      result
        ..add('model')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.imagePath;
    if (value != null) {
      result
        ..add('imagePath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  FavouritesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavouritesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'imagePath':
          result.imagePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$FavouritesRecord extends FavouritesRecord {
  @override
  final String uid;
  @override
  final String model;
  @override
  final String name;
  @override
  final double price;
  @override
  final String imagePath;
  @override
  final double quantity;
  @override
  final String category;
  @override
  final DocumentReference<Object> reference;

  factory _$FavouritesRecord(
          [void Function(FavouritesRecordBuilder) updates]) =>
      (new FavouritesRecordBuilder()..update(updates)).build();

  _$FavouritesRecord._(
      {this.uid,
      this.model,
      this.name,
      this.price,
      this.imagePath,
      this.quantity,
      this.category,
      this.reference})
      : super._();

  @override
  FavouritesRecord rebuild(void Function(FavouritesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavouritesRecordBuilder toBuilder() =>
      new FavouritesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavouritesRecord &&
        uid == other.uid &&
        model == other.model &&
        name == other.name &&
        price == other.price &&
        imagePath == other.imagePath &&
        quantity == other.quantity &&
        category == other.category &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, uid.hashCode), model.hashCode),
                            name.hashCode),
                        price.hashCode),
                    imagePath.hashCode),
                quantity.hashCode),
            category.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavouritesRecord')
          ..add('uid', uid)
          ..add('model', model)
          ..add('name', name)
          ..add('price', price)
          ..add('imagePath', imagePath)
          ..add('quantity', quantity)
          ..add('category', category)
          ..add('reference', reference))
        .toString();
  }
}

class FavouritesRecordBuilder
    implements Builder<FavouritesRecord, FavouritesRecordBuilder> {
  _$FavouritesRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _model;
  String get model => _$this._model;
  set model(String model) => _$this._model = model;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  String _imagePath;
  String get imagePath => _$this._imagePath;
  set imagePath(String imagePath) => _$this._imagePath = imagePath;

  double _quantity;
  double get quantity => _$this._quantity;
  set quantity(double quantity) => _$this._quantity = quantity;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  FavouritesRecordBuilder() {
    FavouritesRecord._initializeBuilder(this);
  }

  FavouritesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _model = $v.model;
      _name = $v.name;
      _price = $v.price;
      _imagePath = $v.imagePath;
      _quantity = $v.quantity;
      _category = $v.category;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavouritesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FavouritesRecord;
  }

  @override
  void update(void Function(FavouritesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FavouritesRecord build() {
    final _$result = _$v ??
        new _$FavouritesRecord._(
            uid: uid,
            model: model,
            name: name,
            price: price,
            imagePath: imagePath,
            quantity: quantity,
            category: category,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
