// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductsRecord> _$productsRecordSerializer =
    new _$ProductsRecordSerializer();

class _$ProductsRecordSerializer
    implements StructuredSerializer<ProductsRecord> {
  @override
  final Iterable<Type> types = const [ProductsRecord, _$ProductsRecord];
  @override
  final String wireName = 'ProductsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.modelno;
    if (value != null) {
      result
        ..add('modelno')
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
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cpu;
    if (value != null) {
      result
        ..add('cpu')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gpu;
    if (value != null) {
      result
        ..add('gpu')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ram;
    if (value != null) {
      result
        ..add('ram')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.storage;
    if (value != null) {
      result
        ..add('storage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stock;
    if (value != null) {
      result
        ..add('stock')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.psu;
    if (value != null) {
      result
        ..add('psu')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.motherboard;
    if (value != null) {
      result
        ..add('motherboard')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favoritos;
    if (value != null) {
      result
        ..add('favoritos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.cart;
    if (value != null) {
      result
        ..add('cart')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(bool)])));
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
  ProductsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'modelno':
          result.modelno = serializers.deserialize(value,
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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cpu':
          result.cpu = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gpu':
          result.gpu = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ram':
          result.ram = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'storage':
          result.storage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stock':
          result.stock = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'psu':
          result.psu = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'motherboard':
          result.motherboard = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'favoritos':
          result.favoritos.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'cart':
          result.cart.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(bool)]))
              as BuiltList<Object>);
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

class _$ProductsRecord extends ProductsRecord {
  @override
  final String modelno;
  @override
  final String name;
  @override
  final double price;
  @override
  final String image;
  @override
  final String category;
  @override
  final String cpu;
  @override
  final String gpu;
  @override
  final String ram;
  @override
  final String storage;
  @override
  final String stock;
  @override
  final String psu;
  @override
  final String type;
  @override
  final String motherboard;
  @override
  final BuiltList<DocumentReference<Object>> favoritos;
  @override
  final BuiltList<bool> cart;
  @override
  final DocumentReference<Object> reference;

  factory _$ProductsRecord([void Function(ProductsRecordBuilder) updates]) =>
      (new ProductsRecordBuilder()..update(updates)).build();

  _$ProductsRecord._(
      {this.modelno,
      this.name,
      this.price,
      this.image,
      this.category,
      this.cpu,
      this.gpu,
      this.ram,
      this.storage,
      this.stock,
      this.psu,
      this.type,
      this.motherboard,
      this.favoritos,
      this.cart,
      this.reference})
      : super._();

  @override
  ProductsRecord rebuild(void Function(ProductsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductsRecordBuilder toBuilder() =>
      new ProductsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductsRecord &&
        modelno == other.modelno &&
        name == other.name &&
        price == other.price &&
        image == other.image &&
        category == other.category &&
        cpu == other.cpu &&
        gpu == other.gpu &&
        ram == other.ram &&
        storage == other.storage &&
        stock == other.stock &&
        psu == other.psu &&
        type == other.type &&
        motherboard == other.motherboard &&
        favoritos == other.favoritos &&
        cart == other.cart &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    modelno
                                                                        .hashCode),
                                                                name.hashCode),
                                                            price.hashCode),
                                                        image.hashCode),
                                                    category.hashCode),
                                                cpu.hashCode),
                                            gpu.hashCode),
                                        ram.hashCode),
                                    storage.hashCode),
                                stock.hashCode),
                            psu.hashCode),
                        type.hashCode),
                    motherboard.hashCode),
                favoritos.hashCode),
            cart.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductsRecord')
          ..add('modelno', modelno)
          ..add('name', name)
          ..add('price', price)
          ..add('image', image)
          ..add('category', category)
          ..add('cpu', cpu)
          ..add('gpu', gpu)
          ..add('ram', ram)
          ..add('storage', storage)
          ..add('stock', stock)
          ..add('psu', psu)
          ..add('type', type)
          ..add('motherboard', motherboard)
          ..add('favoritos', favoritos)
          ..add('cart', cart)
          ..add('reference', reference))
        .toString();
  }
}

class ProductsRecordBuilder
    implements Builder<ProductsRecord, ProductsRecordBuilder> {
  _$ProductsRecord _$v;

  String _modelno;
  String get modelno => _$this._modelno;
  set modelno(String modelno) => _$this._modelno = modelno;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  String _cpu;
  String get cpu => _$this._cpu;
  set cpu(String cpu) => _$this._cpu = cpu;

  String _gpu;
  String get gpu => _$this._gpu;
  set gpu(String gpu) => _$this._gpu = gpu;

  String _ram;
  String get ram => _$this._ram;
  set ram(String ram) => _$this._ram = ram;

  String _storage;
  String get storage => _$this._storage;
  set storage(String storage) => _$this._storage = storage;

  String _stock;
  String get stock => _$this._stock;
  set stock(String stock) => _$this._stock = stock;

  String _psu;
  String get psu => _$this._psu;
  set psu(String psu) => _$this._psu = psu;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _motherboard;
  String get motherboard => _$this._motherboard;
  set motherboard(String motherboard) => _$this._motherboard = motherboard;

  ListBuilder<DocumentReference<Object>> _favoritos;
  ListBuilder<DocumentReference<Object>> get favoritos =>
      _$this._favoritos ??= new ListBuilder<DocumentReference<Object>>();
  set favoritos(ListBuilder<DocumentReference<Object>> favoritos) =>
      _$this._favoritos = favoritos;

  ListBuilder<bool> _cart;
  ListBuilder<bool> get cart => _$this._cart ??= new ListBuilder<bool>();
  set cart(ListBuilder<bool> cart) => _$this._cart = cart;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProductsRecordBuilder() {
    ProductsRecord._initializeBuilder(this);
  }

  ProductsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _modelno = $v.modelno;
      _name = $v.name;
      _price = $v.price;
      _image = $v.image;
      _category = $v.category;
      _cpu = $v.cpu;
      _gpu = $v.gpu;
      _ram = $v.ram;
      _storage = $v.storage;
      _stock = $v.stock;
      _psu = $v.psu;
      _type = $v.type;
      _motherboard = $v.motherboard;
      _favoritos = $v.favoritos?.toBuilder();
      _cart = $v.cart?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductsRecord;
  }

  @override
  void update(void Function(ProductsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductsRecord build() {
    _$ProductsRecord _$result;
    try {
      _$result = _$v ??
          new _$ProductsRecord._(
              modelno: modelno,
              name: name,
              price: price,
              image: image,
              category: category,
              cpu: cpu,
              gpu: gpu,
              ram: ram,
              storage: storage,
              stock: stock,
              psu: psu,
              type: type,
              motherboard: motherboard,
              favoritos: _favoritos?.build(),
              cart: _cart?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'favoritos';
        _favoritos?.build();
        _$failedField = 'cart';
        _cart?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
