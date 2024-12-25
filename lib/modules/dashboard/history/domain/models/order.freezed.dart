// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int get id => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_id')
  int? get paymentId => throw _privateConstructorUsedError;
  double get fee => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipment_fee')
  double get shipmentFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference_number')
  String get referenceNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'rental_items')
  List<RentalItemData> get rentalItems => throw _privateConstructorUsedError;
  Payment? get payment => throw _privateConstructorUsedError;

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {int id,
      bool completed,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'payment_id') int? paymentId,
      double fee,
      @JsonKey(name: 'shipment_fee') double shipmentFee,
      @JsonKey(name: 'reference_number') String referenceNumber,
      @JsonKey(name: 'created_at') DateTime createdAt,
      String? note,
      @JsonKey(name: 'rental_items') List<RentalItemData> rentalItems,
      Payment? payment});

  $PaymentCopyWith<$Res>? get payment;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? completed = null,
    Object? userId = null,
    Object? paymentId = freezed,
    Object? fee = null,
    Object? shipmentFee = null,
    Object? referenceNumber = null,
    Object? createdAt = null,
    Object? note = freezed,
    Object? rentalItems = null,
    Object? payment = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as int?,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as double,
      shipmentFee: null == shipmentFee
          ? _value.shipmentFee
          : shipmentFee // ignore: cast_nullable_to_non_nullable
              as double,
      referenceNumber: null == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      rentalItems: null == rentalItems
          ? _value.rentalItems
          : rentalItems // ignore: cast_nullable_to_non_nullable
              as List<RentalItemData>,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
    ) as $Val);
  }

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res>? get payment {
    if (_value.payment == null) {
      return null;
    }

    return $PaymentCopyWith<$Res>(_value.payment!, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool completed,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'payment_id') int? paymentId,
      double fee,
      @JsonKey(name: 'shipment_fee') double shipmentFee,
      @JsonKey(name: 'reference_number') String referenceNumber,
      @JsonKey(name: 'created_at') DateTime createdAt,
      String? note,
      @JsonKey(name: 'rental_items') List<RentalItemData> rentalItems,
      Payment? payment});

  @override
  $PaymentCopyWith<$Res>? get payment;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? completed = null,
    Object? userId = null,
    Object? paymentId = freezed,
    Object? fee = null,
    Object? shipmentFee = null,
    Object? referenceNumber = null,
    Object? createdAt = null,
    Object? note = freezed,
    Object? rentalItems = null,
    Object? payment = freezed,
  }) {
    return _then(_$OrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as int?,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as double,
      shipmentFee: null == shipmentFee
          ? _value.shipmentFee
          : shipmentFee // ignore: cast_nullable_to_non_nullable
              as double,
      referenceNumber: null == referenceNumber
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      rentalItems: null == rentalItems
          ? _value._rentalItems
          : rentalItems // ignore: cast_nullable_to_non_nullable
              as List<RentalItemData>,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  const _$OrderImpl(
      {required this.id,
      required this.completed,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'payment_id') this.paymentId,
      required this.fee,
      @JsonKey(name: 'shipment_fee') required this.shipmentFee,
      @JsonKey(name: 'reference_number') required this.referenceNumber,
      @JsonKey(name: 'created_at') required this.createdAt,
      this.note,
      @JsonKey(name: 'rental_items')
      required final List<RentalItemData> rentalItems,
      this.payment})
      : _rentalItems = rentalItems;

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final int id;
  @override
  final bool completed;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'payment_id')
  final int? paymentId;
  @override
  final double fee;
  @override
  @JsonKey(name: 'shipment_fee')
  final double shipmentFee;
  @override
  @JsonKey(name: 'reference_number')
  final String referenceNumber;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final String? note;
  final List<RentalItemData> _rentalItems;
  @override
  @JsonKey(name: 'rental_items')
  List<RentalItemData> get rentalItems {
    if (_rentalItems is EqualUnmodifiableListView) return _rentalItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rentalItems);
  }

  @override
  final Payment? payment;

  @override
  String toString() {
    return 'Order(id: $id, completed: $completed, userId: $userId, paymentId: $paymentId, fee: $fee, shipmentFee: $shipmentFee, referenceNumber: $referenceNumber, createdAt: $createdAt, note: $note, rentalItems: $rentalItems, payment: $payment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.shipmentFee, shipmentFee) ||
                other.shipmentFee == shipmentFee) &&
            (identical(other.referenceNumber, referenceNumber) ||
                other.referenceNumber == referenceNumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality()
                .equals(other._rentalItems, _rentalItems) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      completed,
      userId,
      paymentId,
      fee,
      shipmentFee,
      referenceNumber,
      createdAt,
      note,
      const DeepCollectionEquality().hash(_rentalItems),
      payment);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {required final int id,
      required final bool completed,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'payment_id') final int? paymentId,
      required final double fee,
      @JsonKey(name: 'shipment_fee') required final double shipmentFee,
      @JsonKey(name: 'reference_number') required final String referenceNumber,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      final String? note,
      @JsonKey(name: 'rental_items')
      required final List<RentalItemData> rentalItems,
      final Payment? payment}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  int get id;
  @override
  bool get completed;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'payment_id')
  int? get paymentId;
  @override
  double get fee;
  @override
  @JsonKey(name: 'shipment_fee')
  double get shipmentFee;
  @override
  @JsonKey(name: 'reference_number')
  String get referenceNumber;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  String? get note;
  @override
  @JsonKey(name: 'rental_items')
  List<RentalItemData> get rentalItems;
  @override
  Payment? get payment;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RentalItemData _$RentalItemDataFromJson(Map<String, dynamic> json) {
  return _RentalItemData.fromJson(json);
}

/// @nodoc
mixin _$RentalItemData {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_reviewed')
  bool get hasReviewed => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_date')
  DateTime? get returnDate => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "rental_id")
  int get rentalId => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  int get units => throw _privateConstructorUsedError;
  double get fee => throw _privateConstructorUsedError;
  @JsonKey(name: "product_variant")
  Variant? get variant => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;
  @JsonKey(name: "merchant_return_confirmed")
  bool get merchantReturnConfirmed => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_return_confirmed")
  bool get customerReturnConfirmed => throw _privateConstructorUsedError;

  /// Serializes this RentalItemData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RentalItemData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RentalItemDataCopyWith<RentalItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalItemDataCopyWith<$Res> {
  factory $RentalItemDataCopyWith(
          RentalItemData value, $Res Function(RentalItemData) then) =
      _$RentalItemDataCopyWithImpl<$Res, RentalItemData>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'has_reviewed') bool hasReviewed,
      @JsonKey(name: 'return_date') DateTime? returnDate,
      @JsonKey(name: "product_id") int productId,
      @JsonKey(name: "rental_id") int rentalId,
      String? note,
      int units,
      double fee,
      @JsonKey(name: "product_variant") Variant? variant,
      Product product,
      @JsonKey(name: "merchant_return_confirmed") bool merchantReturnConfirmed,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "customer_return_confirmed")
      bool customerReturnConfirmed});

  $VariantCopyWith<$Res>? get variant;
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$RentalItemDataCopyWithImpl<$Res, $Val extends RentalItemData>
    implements $RentalItemDataCopyWith<$Res> {
  _$RentalItemDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RentalItemData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hasReviewed = null,
    Object? returnDate = freezed,
    Object? productId = null,
    Object? rentalId = null,
    Object? note = freezed,
    Object? units = null,
    Object? fee = null,
    Object? variant = freezed,
    Object? product = null,
    Object? merchantReturnConfirmed = null,
    Object? createdAt = null,
    Object? customerReturnConfirmed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hasReviewed: null == hasReviewed
          ? _value.hasReviewed
          : hasReviewed // ignore: cast_nullable_to_non_nullable
              as bool,
      returnDate: freezed == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      rentalId: null == rentalId
          ? _value.rentalId
          : rentalId // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as int,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as double,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as Variant?,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      merchantReturnConfirmed: null == merchantReturnConfirmed
          ? _value.merchantReturnConfirmed
          : merchantReturnConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customerReturnConfirmed: null == customerReturnConfirmed
          ? _value.customerReturnConfirmed
          : customerReturnConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of RentalItemData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VariantCopyWith<$Res>? get variant {
    if (_value.variant == null) {
      return null;
    }

    return $VariantCopyWith<$Res>(_value.variant!, (value) {
      return _then(_value.copyWith(variant: value) as $Val);
    });
  }

  /// Create a copy of RentalItemData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RentalItemDataImplCopyWith<$Res>
    implements $RentalItemDataCopyWith<$Res> {
  factory _$$RentalItemDataImplCopyWith(_$RentalItemDataImpl value,
          $Res Function(_$RentalItemDataImpl) then) =
      __$$RentalItemDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'has_reviewed') bool hasReviewed,
      @JsonKey(name: 'return_date') DateTime? returnDate,
      @JsonKey(name: "product_id") int productId,
      @JsonKey(name: "rental_id") int rentalId,
      String? note,
      int units,
      double fee,
      @JsonKey(name: "product_variant") Variant? variant,
      Product product,
      @JsonKey(name: "merchant_return_confirmed") bool merchantReturnConfirmed,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "customer_return_confirmed")
      bool customerReturnConfirmed});

  @override
  $VariantCopyWith<$Res>? get variant;
  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$RentalItemDataImplCopyWithImpl<$Res>
    extends _$RentalItemDataCopyWithImpl<$Res, _$RentalItemDataImpl>
    implements _$$RentalItemDataImplCopyWith<$Res> {
  __$$RentalItemDataImplCopyWithImpl(
      _$RentalItemDataImpl _value, $Res Function(_$RentalItemDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RentalItemData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hasReviewed = null,
    Object? returnDate = freezed,
    Object? productId = null,
    Object? rentalId = null,
    Object? note = freezed,
    Object? units = null,
    Object? fee = null,
    Object? variant = freezed,
    Object? product = null,
    Object? merchantReturnConfirmed = null,
    Object? createdAt = null,
    Object? customerReturnConfirmed = null,
  }) {
    return _then(_$RentalItemDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hasReviewed: null == hasReviewed
          ? _value.hasReviewed
          : hasReviewed // ignore: cast_nullable_to_non_nullable
              as bool,
      returnDate: freezed == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      rentalId: null == rentalId
          ? _value.rentalId
          : rentalId // ignore: cast_nullable_to_non_nullable
              as int,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      units: null == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as int,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as double,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as Variant?,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      merchantReturnConfirmed: null == merchantReturnConfirmed
          ? _value.merchantReturnConfirmed
          : merchantReturnConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customerReturnConfirmed: null == customerReturnConfirmed
          ? _value.customerReturnConfirmed
          : customerReturnConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RentalItemDataImpl implements _RentalItemData {
  const _$RentalItemDataImpl(
      {required this.id,
      @JsonKey(name: 'has_reviewed') required this.hasReviewed,
      @JsonKey(name: 'return_date') this.returnDate,
      @JsonKey(name: "product_id") required this.productId,
      @JsonKey(name: "rental_id") required this.rentalId,
      this.note,
      required this.units,
      required this.fee,
      @JsonKey(name: "product_variant") this.variant,
      required this.product,
      @JsonKey(name: "merchant_return_confirmed")
      required this.merchantReturnConfirmed,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "customer_return_confirmed")
      required this.customerReturnConfirmed});

  factory _$RentalItemDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RentalItemDataImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'has_reviewed')
  final bool hasReviewed;
  @override
  @JsonKey(name: 'return_date')
  final DateTime? returnDate;
  @override
  @JsonKey(name: "product_id")
  final int productId;
  @override
  @JsonKey(name: "rental_id")
  final int rentalId;
  @override
  final String? note;
  @override
  final int units;
  @override
  final double fee;
  @override
  @JsonKey(name: "product_variant")
  final Variant? variant;
  @override
  final Product product;
  @override
  @JsonKey(name: "merchant_return_confirmed")
  final bool merchantReturnConfirmed;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "customer_return_confirmed")
  final bool customerReturnConfirmed;

  @override
  String toString() {
    return 'RentalItemData(id: $id, hasReviewed: $hasReviewed, returnDate: $returnDate, productId: $productId, rentalId: $rentalId, note: $note, units: $units, fee: $fee, variant: $variant, product: $product, merchantReturnConfirmed: $merchantReturnConfirmed, createdAt: $createdAt, customerReturnConfirmed: $customerReturnConfirmed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentalItemDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hasReviewed, hasReviewed) ||
                other.hasReviewed == hasReviewed) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.rentalId, rentalId) ||
                other.rentalId == rentalId) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.units, units) || other.units == units) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(
                    other.merchantReturnConfirmed, merchantReturnConfirmed) ||
                other.merchantReturnConfirmed == merchantReturnConfirmed) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(
                    other.customerReturnConfirmed, customerReturnConfirmed) ||
                other.customerReturnConfirmed == customerReturnConfirmed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      hasReviewed,
      returnDate,
      productId,
      rentalId,
      note,
      units,
      fee,
      variant,
      product,
      merchantReturnConfirmed,
      createdAt,
      customerReturnConfirmed);

  /// Create a copy of RentalItemData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RentalItemDataImplCopyWith<_$RentalItemDataImpl> get copyWith =>
      __$$RentalItemDataImplCopyWithImpl<_$RentalItemDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RentalItemDataImplToJson(
      this,
    );
  }
}

abstract class _RentalItemData implements RentalItemData {
  const factory _RentalItemData(
      {required final int id,
      @JsonKey(name: 'has_reviewed') required final bool hasReviewed,
      @JsonKey(name: 'return_date') final DateTime? returnDate,
      @JsonKey(name: "product_id") required final int productId,
      @JsonKey(name: "rental_id") required final int rentalId,
      final String? note,
      required final int units,
      required final double fee,
      @JsonKey(name: "product_variant") final Variant? variant,
      required final Product product,
      @JsonKey(name: "merchant_return_confirmed")
      required final bool merchantReturnConfirmed,
      @JsonKey(name: "created_at") required final DateTime createdAt,
      @JsonKey(name: "customer_return_confirmed")
      required final bool customerReturnConfirmed}) = _$RentalItemDataImpl;

  factory _RentalItemData.fromJson(Map<String, dynamic> json) =
      _$RentalItemDataImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'has_reviewed')
  bool get hasReviewed;
  @override
  @JsonKey(name: 'return_date')
  DateTime? get returnDate;
  @override
  @JsonKey(name: "product_id")
  int get productId;
  @override
  @JsonKey(name: "rental_id")
  int get rentalId;
  @override
  String? get note;
  @override
  int get units;
  @override
  double get fee;
  @override
  @JsonKey(name: "product_variant")
  Variant? get variant;
  @override
  Product get product;
  @override
  @JsonKey(name: "merchant_return_confirmed")
  bool get merchantReturnConfirmed;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "customer_return_confirmed")
  bool get customerReturnConfirmed;

  /// Create a copy of RentalItemData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RentalItemDataImplCopyWith<_$RentalItemDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  String? get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_reference')
  String? get transactionReference => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_debited')
  String? get accountDebited => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_receipt')
  String? get transactionReceipt => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  PaymentMethods get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  PaymentStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'earning_overview')
  List<EarningItem> get earningOverview => throw _privateConstructorUsedError;
  @JsonKey(name: 'approval_status')
  ApprovalStatus get approvalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_type')
  TransactionType? get transactionType => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call(
      {String? details,
      @JsonKey(name: 'transaction_reference') String? transactionReference,
      @JsonKey(name: 'account_debited') String? accountDebited,
      @JsonKey(name: 'transaction_receipt') String? transactionReceipt,
      @JsonKey(name: 'payment_method') PaymentMethods paymentMethod,
      @JsonKey(name: 'created_at') DateTime createdAt,
      double amount,
      @JsonKey(name: 'user_id') int userId,
      PaymentStatus status,
      @JsonKey(name: 'completed_at') DateTime? completedAt,
      @JsonKey(name: 'earning_overview') List<EarningItem> earningOverview,
      @JsonKey(name: 'approval_status') ApprovalStatus approvalStatus,
      @JsonKey(name: 'transaction_type') TransactionType? transactionType,
      int id});
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
    Object? transactionReference = freezed,
    Object? accountDebited = freezed,
    Object? transactionReceipt = freezed,
    Object? paymentMethod = null,
    Object? createdAt = null,
    Object? amount = null,
    Object? userId = null,
    Object? status = null,
    Object? completedAt = freezed,
    Object? earningOverview = null,
    Object? approvalStatus = null,
    Object? transactionType = freezed,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionReference: freezed == transactionReference
          ? _value.transactionReference
          : transactionReference // ignore: cast_nullable_to_non_nullable
              as String?,
      accountDebited: freezed == accountDebited
          ? _value.accountDebited
          : accountDebited // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionReceipt: freezed == transactionReceipt
          ? _value.transactionReceipt
          : transactionReceipt // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethods,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      earningOverview: null == earningOverview
          ? _value.earningOverview
          : earningOverview // ignore: cast_nullable_to_non_nullable
              as List<EarningItem>,
      approvalStatus: null == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as ApprovalStatus,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
          _$PaymentImpl value, $Res Function(_$PaymentImpl) then) =
      __$$PaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? details,
      @JsonKey(name: 'transaction_reference') String? transactionReference,
      @JsonKey(name: 'account_debited') String? accountDebited,
      @JsonKey(name: 'transaction_receipt') String? transactionReceipt,
      @JsonKey(name: 'payment_method') PaymentMethods paymentMethod,
      @JsonKey(name: 'created_at') DateTime createdAt,
      double amount,
      @JsonKey(name: 'user_id') int userId,
      PaymentStatus status,
      @JsonKey(name: 'completed_at') DateTime? completedAt,
      @JsonKey(name: 'earning_overview') List<EarningItem> earningOverview,
      @JsonKey(name: 'approval_status') ApprovalStatus approvalStatus,
      @JsonKey(name: 'transaction_type') TransactionType? transactionType,
      int id});
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
      _$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
    Object? transactionReference = freezed,
    Object? accountDebited = freezed,
    Object? transactionReceipt = freezed,
    Object? paymentMethod = null,
    Object? createdAt = null,
    Object? amount = null,
    Object? userId = null,
    Object? status = null,
    Object? completedAt = freezed,
    Object? earningOverview = null,
    Object? approvalStatus = null,
    Object? transactionType = freezed,
    Object? id = null,
  }) {
    return _then(_$PaymentImpl(
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionReference: freezed == transactionReference
          ? _value.transactionReference
          : transactionReference // ignore: cast_nullable_to_non_nullable
              as String?,
      accountDebited: freezed == accountDebited
          ? _value.accountDebited
          : accountDebited // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionReceipt: freezed == transactionReceipt
          ? _value.transactionReceipt
          : transactionReceipt // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethods,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      earningOverview: null == earningOverview
          ? _value._earningOverview
          : earningOverview // ignore: cast_nullable_to_non_nullable
              as List<EarningItem>,
      approvalStatus: null == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as ApprovalStatus,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentImpl implements _Payment {
  const _$PaymentImpl(
      {this.details,
      @JsonKey(name: 'transaction_reference') this.transactionReference,
      @JsonKey(name: 'account_debited') this.accountDebited,
      @JsonKey(name: 'transaction_receipt') this.transactionReceipt,
      @JsonKey(name: 'payment_method') required this.paymentMethod,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.amount,
      @JsonKey(name: 'user_id') required this.userId,
      required this.status,
      @JsonKey(name: 'completed_at') this.completedAt,
      @JsonKey(name: 'earning_overview')
      required final List<EarningItem> earningOverview,
      @JsonKey(name: 'approval_status') required this.approvalStatus,
      @JsonKey(name: 'transaction_type') this.transactionType,
      required this.id})
      : _earningOverview = earningOverview;

  factory _$PaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentImplFromJson(json);

  @override
  final String? details;
  @override
  @JsonKey(name: 'transaction_reference')
  final String? transactionReference;
  @override
  @JsonKey(name: 'account_debited')
  final String? accountDebited;
  @override
  @JsonKey(name: 'transaction_receipt')
  final String? transactionReceipt;
  @override
  @JsonKey(name: 'payment_method')
  final PaymentMethods paymentMethod;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final double amount;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final PaymentStatus status;
  @override
  @JsonKey(name: 'completed_at')
  final DateTime? completedAt;
  final List<EarningItem> _earningOverview;
  @override
  @JsonKey(name: 'earning_overview')
  List<EarningItem> get earningOverview {
    if (_earningOverview is EqualUnmodifiableListView) return _earningOverview;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_earningOverview);
  }

  @override
  @JsonKey(name: 'approval_status')
  final ApprovalStatus approvalStatus;
  @override
  @JsonKey(name: 'transaction_type')
  final TransactionType? transactionType;
  @override
  final int id;

  @override
  String toString() {
    return 'Payment(details: $details, transactionReference: $transactionReference, accountDebited: $accountDebited, transactionReceipt: $transactionReceipt, paymentMethod: $paymentMethod, createdAt: $createdAt, amount: $amount, userId: $userId, status: $status, completedAt: $completedAt, earningOverview: $earningOverview, approvalStatus: $approvalStatus, transactionType: $transactionType, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentImpl &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.transactionReference, transactionReference) ||
                other.transactionReference == transactionReference) &&
            (identical(other.accountDebited, accountDebited) ||
                other.accountDebited == accountDebited) &&
            (identical(other.transactionReceipt, transactionReceipt) ||
                other.transactionReceipt == transactionReceipt) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            const DeepCollectionEquality()
                .equals(other._earningOverview, _earningOverview) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      details,
      transactionReference,
      accountDebited,
      transactionReceipt,
      paymentMethod,
      createdAt,
      amount,
      userId,
      status,
      completedAt,
      const DeepCollectionEquality().hash(_earningOverview),
      approvalStatus,
      transactionType,
      id);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentImplToJson(
      this,
    );
  }
}

abstract class _Payment implements Payment {
  const factory _Payment(
      {final String? details,
      @JsonKey(name: 'transaction_reference')
      final String? transactionReference,
      @JsonKey(name: 'account_debited') final String? accountDebited,
      @JsonKey(name: 'transaction_receipt') final String? transactionReceipt,
      @JsonKey(name: 'payment_method')
      required final PaymentMethods paymentMethod,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      required final double amount,
      @JsonKey(name: 'user_id') required final int userId,
      required final PaymentStatus status,
      @JsonKey(name: 'completed_at') final DateTime? completedAt,
      @JsonKey(name: 'earning_overview')
      required final List<EarningItem> earningOverview,
      @JsonKey(name: 'approval_status')
      required final ApprovalStatus approvalStatus,
      @JsonKey(name: 'transaction_type') final TransactionType? transactionType,
      required final int id}) = _$PaymentImpl;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$PaymentImpl.fromJson;

  @override
  String? get details;
  @override
  @JsonKey(name: 'transaction_reference')
  String? get transactionReference;
  @override
  @JsonKey(name: 'account_debited')
  String? get accountDebited;
  @override
  @JsonKey(name: 'transaction_receipt')
  String? get transactionReceipt;
  @override
  @JsonKey(name: 'payment_method')
  PaymentMethods get paymentMethod;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  double get amount;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  PaymentStatus get status;
  @override
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt;
  @override
  @JsonKey(name: 'earning_overview')
  List<EarningItem> get earningOverview;
  @override
  @JsonKey(name: 'approval_status')
  ApprovalStatus get approvalStatus;
  @override
  @JsonKey(name: 'transaction_type')
  TransactionType? get transactionType;
  @override
  int get id;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EarningItem _$EarningItemFromJson(Map<String, dynamic> json) {
  return _EarningItem.fromJson(json);
}

/// @nodoc
mixin _$EarningItem {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_id")
  int? get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: "rental_item_id")
  int? get rentalItemId => throw _privateConstructorUsedError;
  bool get paid => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_fee_amount')
  double get serviceFeeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'rental_fee_amount')
  double get rentalFeeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'effective_amount')
  double get effectiveAmount => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this EarningItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarningItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarningItemCopyWith<EarningItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningItemCopyWith<$Res> {
  factory $EarningItemCopyWith(
          EarningItem value, $Res Function(EarningItem) then) =
      _$EarningItemCopyWithImpl<$Res, EarningItem>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "transaction_id") int? transactionId,
      @JsonKey(name: "rental_item_id") int? rentalItemId,
      bool paid,
      @JsonKey(name: 'service_fee_amount') double serviceFeeAmount,
      @JsonKey(name: 'rental_fee_amount') double rentalFeeAmount,
      @JsonKey(name: 'effective_amount') double effectiveAmount,
      String description});
}

/// @nodoc
class _$EarningItemCopyWithImpl<$Res, $Val extends EarningItem>
    implements $EarningItemCopyWith<$Res> {
  _$EarningItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarningItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = freezed,
    Object? rentalItemId = freezed,
    Object? paid = null,
    Object? serviceFeeAmount = null,
    Object? rentalFeeAmount = null,
    Object? effectiveAmount = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int?,
      rentalItemId: freezed == rentalItemId
          ? _value.rentalItemId
          : rentalItemId // ignore: cast_nullable_to_non_nullable
              as int?,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool,
      serviceFeeAmount: null == serviceFeeAmount
          ? _value.serviceFeeAmount
          : serviceFeeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      rentalFeeAmount: null == rentalFeeAmount
          ? _value.rentalFeeAmount
          : rentalFeeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      effectiveAmount: null == effectiveAmount
          ? _value.effectiveAmount
          : effectiveAmount // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarningItemImplCopyWith<$Res>
    implements $EarningItemCopyWith<$Res> {
  factory _$$EarningItemImplCopyWith(
          _$EarningItemImpl value, $Res Function(_$EarningItemImpl) then) =
      __$$EarningItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "transaction_id") int? transactionId,
      @JsonKey(name: "rental_item_id") int? rentalItemId,
      bool paid,
      @JsonKey(name: 'service_fee_amount') double serviceFeeAmount,
      @JsonKey(name: 'rental_fee_amount') double rentalFeeAmount,
      @JsonKey(name: 'effective_amount') double effectiveAmount,
      String description});
}

/// @nodoc
class __$$EarningItemImplCopyWithImpl<$Res>
    extends _$EarningItemCopyWithImpl<$Res, _$EarningItemImpl>
    implements _$$EarningItemImplCopyWith<$Res> {
  __$$EarningItemImplCopyWithImpl(
      _$EarningItemImpl _value, $Res Function(_$EarningItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarningItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = freezed,
    Object? rentalItemId = freezed,
    Object? paid = null,
    Object? serviceFeeAmount = null,
    Object? rentalFeeAmount = null,
    Object? effectiveAmount = null,
    Object? description = null,
  }) {
    return _then(_$EarningItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int?,
      rentalItemId: freezed == rentalItemId
          ? _value.rentalItemId
          : rentalItemId // ignore: cast_nullable_to_non_nullable
              as int?,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool,
      serviceFeeAmount: null == serviceFeeAmount
          ? _value.serviceFeeAmount
          : serviceFeeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      rentalFeeAmount: null == rentalFeeAmount
          ? _value.rentalFeeAmount
          : rentalFeeAmount // ignore: cast_nullable_to_non_nullable
              as double,
      effectiveAmount: null == effectiveAmount
          ? _value.effectiveAmount
          : effectiveAmount // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarningItemImpl implements _EarningItem {
  const _$EarningItemImpl(
      {required this.id,
      @JsonKey(name: "transaction_id") this.transactionId,
      @JsonKey(name: "rental_item_id") this.rentalItemId,
      required this.paid,
      @JsonKey(name: 'service_fee_amount') required this.serviceFeeAmount,
      @JsonKey(name: 'rental_fee_amount') required this.rentalFeeAmount,
      @JsonKey(name: 'effective_amount') required this.effectiveAmount,
      required this.description});

  factory _$EarningItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarningItemImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "transaction_id")
  final int? transactionId;
  @override
  @JsonKey(name: "rental_item_id")
  final int? rentalItemId;
  @override
  final bool paid;
  @override
  @JsonKey(name: 'service_fee_amount')
  final double serviceFeeAmount;
  @override
  @JsonKey(name: 'rental_fee_amount')
  final double rentalFeeAmount;
  @override
  @JsonKey(name: 'effective_amount')
  final double effectiveAmount;
  @override
  final String description;

  @override
  String toString() {
    return 'EarningItem(id: $id, transactionId: $transactionId, rentalItemId: $rentalItemId, paid: $paid, serviceFeeAmount: $serviceFeeAmount, rentalFeeAmount: $rentalFeeAmount, effectiveAmount: $effectiveAmount, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.rentalItemId, rentalItemId) ||
                other.rentalItemId == rentalItemId) &&
            (identical(other.paid, paid) || other.paid == paid) &&
            (identical(other.serviceFeeAmount, serviceFeeAmount) ||
                other.serviceFeeAmount == serviceFeeAmount) &&
            (identical(other.rentalFeeAmount, rentalFeeAmount) ||
                other.rentalFeeAmount == rentalFeeAmount) &&
            (identical(other.effectiveAmount, effectiveAmount) ||
                other.effectiveAmount == effectiveAmount) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, transactionId, rentalItemId,
      paid, serviceFeeAmount, rentalFeeAmount, effectiveAmount, description);

  /// Create a copy of EarningItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningItemImplCopyWith<_$EarningItemImpl> get copyWith =>
      __$$EarningItemImplCopyWithImpl<_$EarningItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarningItemImplToJson(
      this,
    );
  }
}

abstract class _EarningItem implements EarningItem {
  const factory _EarningItem(
      {required final int id,
      @JsonKey(name: "transaction_id") final int? transactionId,
      @JsonKey(name: "rental_item_id") final int? rentalItemId,
      required final bool paid,
      @JsonKey(name: 'service_fee_amount')
      required final double serviceFeeAmount,
      @JsonKey(name: 'rental_fee_amount') required final double rentalFeeAmount,
      @JsonKey(name: 'effective_amount') required final double effectiveAmount,
      required final String description}) = _$EarningItemImpl;

  factory _EarningItem.fromJson(Map<String, dynamic> json) =
      _$EarningItemImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "transaction_id")
  int? get transactionId;
  @override
  @JsonKey(name: "rental_item_id")
  int? get rentalItemId;
  @override
  bool get paid;
  @override
  @JsonKey(name: 'service_fee_amount')
  double get serviceFeeAmount;
  @override
  @JsonKey(name: 'rental_fee_amount')
  double get rentalFeeAmount;
  @override
  @JsonKey(name: 'effective_amount')
  double get effectiveAmount;
  @override
  String get description;

  /// Create a copy of EarningItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarningItemImplCopyWith<_$EarningItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
