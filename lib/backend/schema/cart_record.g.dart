// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CartRecord> _$cartRecordSerializer = new _$CartRecordSerializer();

class _$CartRecordSerializer implements StructuredSerializer<CartRecord> {
  @override
  final Iterable<Type> types = const [CartRecord, _$CartRecord];
  @override
  final String wireName = 'CartRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CartRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.createdBy;
    if (value != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.item;
    if (value != null) {
      result
        ..add('item')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  CartRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'created_by':
          result.createdBy = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'item':
          result.item = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imagePath':
          result.imagePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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

class _$CartRecord extends CartRecord {
  @override
  final DocumentReference<Object> createdBy;
  @override
  final DocumentReference<Object> item;
  @override
  final String name;
  @override
  final double price;
  @override
  final String uid;
  @override
  final String imagePath;
  @override
  final double quantity;
  @override
  final DocumentReference<Object> reference;

  factory _$CartRecord([void Function(CartRecordBuilder) updates]) =>
      (new CartRecordBuilder()..update(updates)).build();

  _$CartRecord._(
      {this.createdBy,
      this.item,
      this.name,
      this.price,
      this.uid,
      this.imagePath,
      this.quantity,
      this.reference})
      : super._();

  @override
  CartRecord rebuild(void Function(CartRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartRecordBuilder toBuilder() => new CartRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartRecord &&
        createdBy == other.createdBy &&
        item == other.item &&
        name == other.name &&
        price == other.price &&
        uid == other.uid &&
        imagePath == other.imagePath &&
        quantity == other.quantity &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, createdBy.hashCode), item.hashCode),
                            name.hashCode),
                        price.hashCode),
                    uid.hashCode),
                imagePath.hashCode),
            quantity.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CartRecord')
          ..add('createdBy', createdBy)
          ..add('item', item)
          ..add('name', name)
          ..add('price', price)
          ..add('uid', uid)
          ..add('imagePath', imagePath)
          ..add('quantity', quantity)
          ..add('reference', reference))
        .toString();
  }
}

class CartRecordBuilder implements Builder<CartRecord, CartRecordBuilder> {
  _$CartRecord _$v;

  DocumentReference<Object> _createdBy;
  DocumentReference<Object> get createdBy => _$this._createdBy;
  set createdBy(DocumentReference<Object> createdBy) =>
      _$this._createdBy = createdBy;

  DocumentReference<Object> _item;
  DocumentReference<Object> get item => _$this._item;
  set item(DocumentReference<Object> item) => _$this._item = item;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _imagePath;
  String get imagePath => _$this._imagePath;
  set imagePath(String imagePath) => _$this._imagePath = imagePath;

  double _quantity;
  double get quantity => _$this._quantity;
  set quantity(double quantity) => _$this._quantity = quantity;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CartRecordBuilder() {
    CartRecord._initializeBuilder(this);
  }

  CartRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdBy = $v.createdBy;
      _item = $v.item;
      _name = $v.name;
      _price = $v.price;
      _uid = $v.uid;
      _imagePath = $v.imagePath;
      _quantity = $v.quantity;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartRecord;
  }

  @override
  void update(void Function(CartRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CartRecord build() {
    final _$result = _$v ??
        new _$CartRecord._(
            createdBy: createdBy,
            item: item,
            name: name,
            price: price,
            uid: uid,
            imagePath: imagePath,
            quantity: quantity,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
