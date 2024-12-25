// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductQuery _$ProductQueryFromJson(Map<String, dynamic> json) {
  return _ProductQuery.fromJson(json);
}

/// @nodoc
mixin _$ProductQuery {
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: "page_size")
  int? get pageSize => throw _privateConstructorUsedError;
  String? get keyword => throw _privateConstructorUsedError;
  @JsonKey(name: "merchant_id")
  int? get merchantId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;

  /// Serializes this ProductQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductQueryCopyWith<ProductQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductQueryCopyWith<$Res> {
  factory $ProductQueryCopyWith(
          ProductQuery value, $Res Function(ProductQuery) then) =
      _$ProductQueryCopyWithImpl<$Res, ProductQuery>;
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: "page_size") int? pageSize,
      String? keyword,
      @JsonKey(name: "merchant_id") int? merchantId,
      @JsonKey(name: "category_id") int? categoryId});
}

/// @nodoc
class _$ProductQueryCopyWithImpl<$Res, $Val extends ProductQuery>
    implements $ProductQueryCopyWith<$Res> {
  _$ProductQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? keyword = freezed,
    Object? merchantId = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantId: freezed == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductQueryImplCopyWith<$Res>
    implements $ProductQueryCopyWith<$Res> {
  factory _$$ProductQueryImplCopyWith(
          _$ProductQueryImpl value, $Res Function(_$ProductQueryImpl) then) =
      __$$ProductQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      @JsonKey(name: "page_size") int? pageSize,
      String? keyword,
      @JsonKey(name: "merchant_id") int? merchantId,
      @JsonKey(name: "category_id") int? categoryId});
}

/// @nodoc
class __$$ProductQueryImplCopyWithImpl<$Res>
    extends _$ProductQueryCopyWithImpl<$Res, _$ProductQueryImpl>
    implements _$$ProductQueryImplCopyWith<$Res> {
  __$$ProductQueryImplCopyWithImpl(
      _$ProductQueryImpl _value, $Res Function(_$ProductQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? keyword = freezed,
    Object? merchantId = freezed,
    Object? categoryId = freezed,
  }) {
    return _then(_$ProductQueryImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantId: freezed == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductQueryImpl implements _ProductQuery {
  const _$ProductQueryImpl(
      {this.page,
      @JsonKey(name: "page_size") this.pageSize,
      this.keyword,
      @JsonKey(name: "merchant_id") this.merchantId,
      @JsonKey(name: "category_id") this.categoryId});

  factory _$ProductQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductQueryImplFromJson(json);

  @override
  final int? page;
  @override
  @JsonKey(name: "page_size")
  final int? pageSize;
  @override
  final String? keyword;
  @override
  @JsonKey(name: "merchant_id")
  final int? merchantId;
  @override
  @JsonKey(name: "category_id")
  final int? categoryId;

  @override
  String toString() {
    return 'ProductQuery(page: $page, pageSize: $pageSize, keyword: $keyword, merchantId: $merchantId, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductQueryImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, page, pageSize, keyword, merchantId, categoryId);

  /// Create a copy of ProductQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductQueryImplCopyWith<_$ProductQueryImpl> get copyWith =>
      __$$ProductQueryImplCopyWithImpl<_$ProductQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductQueryImplToJson(
      this,
    );
  }
}

abstract class _ProductQuery implements ProductQuery {
  const factory _ProductQuery(
          {final int? page,
          @JsonKey(name: "page_size") final int? pageSize,
          final String? keyword,
          @JsonKey(name: "merchant_id") final int? merchantId,
          @JsonKey(name: "category_id") final int? categoryId}) =
      _$ProductQueryImpl;

  factory _ProductQuery.fromJson(Map<String, dynamic> json) =
      _$ProductQueryImpl.fromJson;

  @override
  int? get page;
  @override
  @JsonKey(name: "page_size")
  int? get pageSize;
  @override
  String? get keyword;
  @override
  @JsonKey(name: "merchant_id")
  int? get merchantId;
  @override
  @JsonKey(name: "category_id")
  int? get categoryId;

  /// Create a copy of ProductQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductQueryImplCopyWith<_$ProductQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCreateData _$ProductCreateDataFromJson(Map<String, dynamic> json) {
  return _ProductCreateData.fromJson(json);
}

/// @nodoc
mixin _$ProductCreateData {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "base_rental_fee")
  int get baseRentalFee => throw _privateConstructorUsedError;
  bool get available => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<int> get tags => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? get poster => throw _privateConstructorUsedError;
  @JsonKey(name: "in_stock")
  int get inStock => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int get categoryId => throw _privateConstructorUsedError;

  /// Serializes this ProductCreateData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductCreateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCreateDataCopyWith<ProductCreateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCreateDataCopyWith<$Res> {
  factory $ProductCreateDataCopyWith(
          ProductCreateData value, $Res Function(ProductCreateData) then) =
      _$ProductCreateDataCopyWithImpl<$Res, ProductCreateData>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "base_rental_fee") int baseRentalFee,
      bool available,
      String description,
      List<int> tags,
      @JsonKey(includeFromJson: false, includeToJson: false) File? poster,
      @JsonKey(name: "in_stock") int inStock,
      @JsonKey(name: "category_id") int categoryId});
}

/// @nodoc
class _$ProductCreateDataCopyWithImpl<$Res, $Val extends ProductCreateData>
    implements $ProductCreateDataCopyWith<$Res> {
  _$ProductCreateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCreateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? baseRentalFee = null,
    Object? available = null,
    Object? description = null,
    Object? tags = null,
    Object? poster = freezed,
    Object? inStock = null,
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      baseRentalFee: null == baseRentalFee
          ? _value.baseRentalFee
          : baseRentalFee // ignore: cast_nullable_to_non_nullable
              as int,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<int>,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as File?,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductCreateDataImplCopyWith<$Res>
    implements $ProductCreateDataCopyWith<$Res> {
  factory _$$ProductCreateDataImplCopyWith(_$ProductCreateDataImpl value,
          $Res Function(_$ProductCreateDataImpl) then) =
      __$$ProductCreateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: "base_rental_fee") int baseRentalFee,
      bool available,
      String description,
      List<int> tags,
      @JsonKey(includeFromJson: false, includeToJson: false) File? poster,
      @JsonKey(name: "in_stock") int inStock,
      @JsonKey(name: "category_id") int categoryId});
}

/// @nodoc
class __$$ProductCreateDataImplCopyWithImpl<$Res>
    extends _$ProductCreateDataCopyWithImpl<$Res, _$ProductCreateDataImpl>
    implements _$$ProductCreateDataImplCopyWith<$Res> {
  __$$ProductCreateDataImplCopyWithImpl(_$ProductCreateDataImpl _value,
      $Res Function(_$ProductCreateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductCreateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? baseRentalFee = null,
    Object? available = null,
    Object? description = null,
    Object? tags = null,
    Object? poster = freezed,
    Object? inStock = null,
    Object? categoryId = null,
  }) {
    return _then(_$ProductCreateDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      baseRentalFee: null == baseRentalFee
          ? _value.baseRentalFee
          : baseRentalFee // ignore: cast_nullable_to_non_nullable
              as int,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<int>,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as File?,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductCreateDataImpl implements _ProductCreateData {
  const _$ProductCreateDataImpl(
      {required this.name,
      @JsonKey(name: "base_rental_fee") required this.baseRentalFee,
      required this.available,
      required this.description,
      final List<int> tags = const [],
      @JsonKey(includeFromJson: false, includeToJson: false) this.poster,
      @JsonKey(name: "in_stock") required this.inStock,
      @JsonKey(name: "category_id") required this.categoryId})
      : _tags = tags;

  factory _$ProductCreateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCreateDataImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: "base_rental_fee")
  final int baseRentalFee;
  @override
  final bool available;
  @override
  final String description;
  final List<int> _tags;
  @override
  @JsonKey()
  List<int> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final File? poster;
  @override
  @JsonKey(name: "in_stock")
  final int inStock;
  @override
  @JsonKey(name: "category_id")
  final int categoryId;

  @override
  String toString() {
    return 'ProductCreateData(name: $name, baseRentalFee: $baseRentalFee, available: $available, description: $description, tags: $tags, poster: $poster, inStock: $inStock, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCreateDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.baseRentalFee, baseRentalFee) ||
                other.baseRentalFee == baseRentalFee) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.inStock, inStock) || other.inStock == inStock) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      baseRentalFee,
      available,
      description,
      const DeepCollectionEquality().hash(_tags),
      poster,
      inStock,
      categoryId);

  /// Create a copy of ProductCreateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCreateDataImplCopyWith<_$ProductCreateDataImpl> get copyWith =>
      __$$ProductCreateDataImplCopyWithImpl<_$ProductCreateDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCreateDataImplToJson(
      this,
    );
  }
}

abstract class _ProductCreateData implements ProductCreateData {
  const factory _ProductCreateData(
      {required final String name,
      @JsonKey(name: "base_rental_fee") required final int baseRentalFee,
      required final bool available,
      required final String description,
      final List<int> tags,
      @JsonKey(includeFromJson: false, includeToJson: false) final File? poster,
      @JsonKey(name: "in_stock") required final int inStock,
      @JsonKey(name: "category_id")
      required final int categoryId}) = _$ProductCreateDataImpl;

  factory _ProductCreateData.fromJson(Map<String, dynamic> json) =
      _$ProductCreateDataImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: "base_rental_fee")
  int get baseRentalFee;
  @override
  bool get available;
  @override
  String get description;
  @override
  List<int> get tags;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? get poster;
  @override
  @JsonKey(name: "in_stock")
  int get inStock;
  @override
  @JsonKey(name: "category_id")
  int get categoryId;

  /// Create a copy of ProductCreateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCreateDataImplCopyWith<_$ProductCreateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get poster =>
      throw _privateConstructorUsedError; // @JsonKey(name: "merchant") required Merchant merchant,
  bool get available => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "reviews_count")
  int get reviewsCount => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "favorite_count")
  int? get favoriteCount => throw _privateConstructorUsedError;
  @JsonKey(name: "in_stock")
  int get inStock => throw _privateConstructorUsedError;
  @JsonKey(name: "display_fee")
  double get displayFee => throw _privateConstructorUsedError;
  List<Media> get media => throw _privateConstructorUsedError;
  List<Tag> get tags => throw _privateConstructorUsedError;
  List<Variant> get variants => throw _privateConstructorUsedError;
  @JsonKey(name: "replacement_cost")
  double? get replacementCost => throw _privateConstructorUsedError;
  @JsonKey(name: "base_rental_fee")
  double get baseRentalFee => throw _privateConstructorUsedError;
  @JsonKey(name: "insurance_fee")
  double get insuranceFee => throw _privateConstructorUsedError;
  @JsonKey(name: "service_fee")
  double get serviceFee => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      String name,
      String poster,
      bool available,
      String description,
      @JsonKey(name: "category_id") int categoryId,
      @JsonKey(name: "reviews_count") int reviewsCount,
      double rating,
      @JsonKey(name: "favorite_count") int? favoriteCount,
      @JsonKey(name: "in_stock") int inStock,
      @JsonKey(name: "display_fee") double displayFee,
      List<Media> media,
      List<Tag> tags,
      List<Variant> variants,
      @JsonKey(name: "replacement_cost") double? replacementCost,
      @JsonKey(name: "base_rental_fee") double baseRentalFee,
      @JsonKey(name: "insurance_fee") double insuranceFee,
      @JsonKey(name: "service_fee") double serviceFee});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? poster = null,
    Object? available = null,
    Object? description = null,
    Object? categoryId = null,
    Object? reviewsCount = null,
    Object? rating = null,
    Object? favoriteCount = freezed,
    Object? inStock = null,
    Object? displayFee = null,
    Object? media = null,
    Object? tags = null,
    Object? variants = null,
    Object? replacementCost = freezed,
    Object? baseRentalFee = null,
    Object? insuranceFee = null,
    Object? serviceFee = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsCount: null == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      favoriteCount: freezed == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int,
      displayFee: null == displayFee
          ? _value.displayFee
          : displayFee // ignore: cast_nullable_to_non_nullable
              as double,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>,
      replacementCost: freezed == replacementCost
          ? _value.replacementCost
          : replacementCost // ignore: cast_nullable_to_non_nullable
              as double?,
      baseRentalFee: null == baseRentalFee
          ? _value.baseRentalFee
          : baseRentalFee // ignore: cast_nullable_to_non_nullable
              as double,
      insuranceFee: null == insuranceFee
          ? _value.insuranceFee
          : insuranceFee // ignore: cast_nullable_to_non_nullable
              as double,
      serviceFee: null == serviceFee
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String poster,
      bool available,
      String description,
      @JsonKey(name: "category_id") int categoryId,
      @JsonKey(name: "reviews_count") int reviewsCount,
      double rating,
      @JsonKey(name: "favorite_count") int? favoriteCount,
      @JsonKey(name: "in_stock") int inStock,
      @JsonKey(name: "display_fee") double displayFee,
      List<Media> media,
      List<Tag> tags,
      List<Variant> variants,
      @JsonKey(name: "replacement_cost") double? replacementCost,
      @JsonKey(name: "base_rental_fee") double baseRentalFee,
      @JsonKey(name: "insurance_fee") double insuranceFee,
      @JsonKey(name: "service_fee") double serviceFee});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? poster = null,
    Object? available = null,
    Object? description = null,
    Object? categoryId = null,
    Object? reviewsCount = null,
    Object? rating = null,
    Object? favoriteCount = freezed,
    Object? inStock = null,
    Object? displayFee = null,
    Object? media = null,
    Object? tags = null,
    Object? variants = null,
    Object? replacementCost = freezed,
    Object? baseRentalFee = null,
    Object? insuranceFee = null,
    Object? serviceFee = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsCount: null == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      favoriteCount: freezed == favoriteCount
          ? _value.favoriteCount
          : favoriteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int,
      displayFee: null == displayFee
          ? _value.displayFee
          : displayFee // ignore: cast_nullable_to_non_nullable
              as double,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>,
      replacementCost: freezed == replacementCost
          ? _value.replacementCost
          : replacementCost // ignore: cast_nullable_to_non_nullable
              as double?,
      baseRentalFee: null == baseRentalFee
          ? _value.baseRentalFee
          : baseRentalFee // ignore: cast_nullable_to_non_nullable
              as double,
      insuranceFee: null == insuranceFee
          ? _value.insuranceFee
          : insuranceFee // ignore: cast_nullable_to_non_nullable
              as double,
      serviceFee: null == serviceFee
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.id,
      required this.name,
      required this.poster,
      required this.available,
      required this.description,
      @JsonKey(name: "category_id") required this.categoryId,
      @JsonKey(name: "reviews_count") required this.reviewsCount,
      required this.rating,
      @JsonKey(name: "favorite_count") this.favoriteCount,
      @JsonKey(name: "in_stock") required this.inStock,
      @JsonKey(name: "display_fee") required this.displayFee,
      final List<Media> media = const [],
      final List<Tag> tags = const [],
      final List<Variant> variants = const [],
      @JsonKey(name: "replacement_cost") this.replacementCost,
      @JsonKey(name: "base_rental_fee") required this.baseRentalFee,
      @JsonKey(name: "insurance_fee") required this.insuranceFee,
      @JsonKey(name: "service_fee") required this.serviceFee})
      : _media = media,
        _tags = tags,
        _variants = variants;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String poster;
// @JsonKey(name: "merchant") required Merchant merchant,
  @override
  final bool available;
  @override
  final String description;
  @override
  @JsonKey(name: "category_id")
  final int categoryId;
  @override
  @JsonKey(name: "reviews_count")
  final int reviewsCount;
  @override
  final double rating;
  @override
  @JsonKey(name: "favorite_count")
  final int? favoriteCount;
  @override
  @JsonKey(name: "in_stock")
  final int inStock;
  @override
  @JsonKey(name: "display_fee")
  final double displayFee;
  final List<Media> _media;
  @override
  @JsonKey()
  List<Media> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  final List<Tag> _tags;
  @override
  @JsonKey()
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<Variant> _variants;
  @override
  @JsonKey()
  List<Variant> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  @JsonKey(name: "replacement_cost")
  final double? replacementCost;
  @override
  @JsonKey(name: "base_rental_fee")
  final double baseRentalFee;
  @override
  @JsonKey(name: "insurance_fee")
  final double insuranceFee;
  @override
  @JsonKey(name: "service_fee")
  final double serviceFee;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, poster: $poster, available: $available, description: $description, categoryId: $categoryId, reviewsCount: $reviewsCount, rating: $rating, favoriteCount: $favoriteCount, inStock: $inStock, displayFee: $displayFee, media: $media, tags: $tags, variants: $variants, replacementCost: $replacementCost, baseRentalFee: $baseRentalFee, insuranceFee: $insuranceFee, serviceFee: $serviceFee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.favoriteCount, favoriteCount) ||
                other.favoriteCount == favoriteCount) &&
            (identical(other.inStock, inStock) || other.inStock == inStock) &&
            (identical(other.displayFee, displayFee) ||
                other.displayFee == displayFee) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            (identical(other.replacementCost, replacementCost) ||
                other.replacementCost == replacementCost) &&
            (identical(other.baseRentalFee, baseRentalFee) ||
                other.baseRentalFee == baseRentalFee) &&
            (identical(other.insuranceFee, insuranceFee) ||
                other.insuranceFee == insuranceFee) &&
            (identical(other.serviceFee, serviceFee) ||
                other.serviceFee == serviceFee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      poster,
      available,
      description,
      categoryId,
      reviewsCount,
      rating,
      favoriteCount,
      inStock,
      displayFee,
      const DeepCollectionEquality().hash(_media),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_variants),
      replacementCost,
      baseRentalFee,
      insuranceFee,
      serviceFee);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
          {required final int id,
          required final String name,
          required final String poster,
          required final bool available,
          required final String description,
          @JsonKey(name: "category_id") required final int categoryId,
          @JsonKey(name: "reviews_count") required final int reviewsCount,
          required final double rating,
          @JsonKey(name: "favorite_count") final int? favoriteCount,
          @JsonKey(name: "in_stock") required final int inStock,
          @JsonKey(name: "display_fee") required final double displayFee,
          final List<Media> media,
          final List<Tag> tags,
          final List<Variant> variants,
          @JsonKey(name: "replacement_cost") final double? replacementCost,
          @JsonKey(name: "base_rental_fee") required final double baseRentalFee,
          @JsonKey(name: "insurance_fee") required final double insuranceFee,
          @JsonKey(name: "service_fee") required final double serviceFee}) =
      _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get poster; // @JsonKey(name: "merchant") required Merchant merchant,
  @override
  bool get available;
  @override
  String get description;
  @override
  @JsonKey(name: "category_id")
  int get categoryId;
  @override
  @JsonKey(name: "reviews_count")
  int get reviewsCount;
  @override
  double get rating;
  @override
  @JsonKey(name: "favorite_count")
  int? get favoriteCount;
  @override
  @JsonKey(name: "in_stock")
  int get inStock;
  @override
  @JsonKey(name: "display_fee")
  double get displayFee;
  @override
  List<Media> get media;
  @override
  List<Tag> get tags;
  @override
  List<Variant> get variants;
  @override
  @JsonKey(name: "replacement_cost")
  double? get replacementCost;
  @override
  @JsonKey(name: "base_rental_fee")
  double get baseRentalFee;
  @override
  @JsonKey(name: "insurance_fee")
  double get insuranceFee;
  @override
  @JsonKey(name: "service_fee")
  double get serviceFee;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Variant _$VariantFromJson(Map<String, dynamic> json) {
  return _Variant.fromJson(json);
}

/// @nodoc
mixin _$Variant {
  int get id => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_stock')
  int get inStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_increment')
  double get priceIncrement => throw _privateConstructorUsedError;
  List<Media> get media => throw _privateConstructorUsedError;

  /// Serializes this Variant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VariantCopyWith<Variant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantCopyWith<$Res> {
  factory $VariantCopyWith(Variant value, $Res Function(Variant) then) =
      _$VariantCopyWithImpl<$Res, Variant>;
  @useResult
  $Res call(
      {int id,
      String color,
      String size,
      @JsonKey(name: 'in_stock') int inStock,
      @JsonKey(name: 'price_increment') double priceIncrement,
      List<Media> media});
}

/// @nodoc
class _$VariantCopyWithImpl<$Res, $Val extends Variant>
    implements $VariantCopyWith<$Res> {
  _$VariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? color = null,
    Object? size = null,
    Object? inStock = null,
    Object? priceIncrement = null,
    Object? media = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int,
      priceIncrement: null == priceIncrement
          ? _value.priceIncrement
          : priceIncrement // ignore: cast_nullable_to_non_nullable
              as double,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariantImplCopyWith<$Res> implements $VariantCopyWith<$Res> {
  factory _$$VariantImplCopyWith(
          _$VariantImpl value, $Res Function(_$VariantImpl) then) =
      __$$VariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String color,
      String size,
      @JsonKey(name: 'in_stock') int inStock,
      @JsonKey(name: 'price_increment') double priceIncrement,
      List<Media> media});
}

/// @nodoc
class __$$VariantImplCopyWithImpl<$Res>
    extends _$VariantCopyWithImpl<$Res, _$VariantImpl>
    implements _$$VariantImplCopyWith<$Res> {
  __$$VariantImplCopyWithImpl(
      _$VariantImpl _value, $Res Function(_$VariantImpl) _then)
      : super(_value, _then);

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? color = null,
    Object? size = null,
    Object? inStock = null,
    Object? priceIncrement = null,
    Object? media = null,
  }) {
    return _then(_$VariantImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int,
      priceIncrement: null == priceIncrement
          ? _value.priceIncrement
          : priceIncrement // ignore: cast_nullable_to_non_nullable
              as double,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariantImpl implements _Variant {
  const _$VariantImpl(
      {required this.id,
      required this.color,
      required this.size,
      @JsonKey(name: 'in_stock') required this.inStock,
      @JsonKey(name: 'price_increment') required this.priceIncrement,
      final List<Media> media = const []})
      : _media = media;

  factory _$VariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantImplFromJson(json);

  @override
  final int id;
  @override
  final String color;
  @override
  final String size;
  @override
  @JsonKey(name: 'in_stock')
  final int inStock;
  @override
  @JsonKey(name: 'price_increment')
  final double priceIncrement;
  final List<Media> _media;
  @override
  @JsonKey()
  List<Media> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  String toString() {
    return 'Variant(id: $id, color: $color, size: $size, inStock: $inStock, priceIncrement: $priceIncrement, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.inStock, inStock) || other.inStock == inStock) &&
            (identical(other.priceIncrement, priceIncrement) ||
                other.priceIncrement == priceIncrement) &&
            const DeepCollectionEquality().equals(other._media, _media));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, color, size, inStock,
      priceIncrement, const DeepCollectionEquality().hash(_media));

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantImplCopyWith<_$VariantImpl> get copyWith =>
      __$$VariantImplCopyWithImpl<_$VariantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VariantImplToJson(
      this,
    );
  }
}

abstract class _Variant implements Variant {
  const factory _Variant(
      {required final int id,
      required final String color,
      required final String size,
      @JsonKey(name: 'in_stock') required final int inStock,
      @JsonKey(name: 'price_increment') required final double priceIncrement,
      final List<Media> media}) = _$VariantImpl;

  factory _Variant.fromJson(Map<String, dynamic> json) = _$VariantImpl.fromJson;

  @override
  int get id;
  @override
  String get color;
  @override
  String get size;
  @override
  @JsonKey(name: 'in_stock')
  int get inStock;
  @override
  @JsonKey(name: 'price_increment')
  double get priceIncrement;
  @override
  List<Media> get media;

  /// Create a copy of Variant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VariantImplCopyWith<_$VariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tag _$TagFromJson(Map<String, dynamic> json) {
  return _Tag.fromJson(json);
}

/// @nodoc
mixin _$Tag {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Tag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagCopyWith<Tag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagCopyWith<$Res> {
  factory $TagCopyWith(Tag value, $Res Function(Tag) then) =
      _$TagCopyWithImpl<$Res, Tag>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$TagCopyWithImpl<$Res, $Val extends Tag> implements $TagCopyWith<$Res> {
  _$TagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagImplCopyWith<$Res> implements $TagCopyWith<$Res> {
  factory _$$TagImplCopyWith(_$TagImpl value, $Res Function(_$TagImpl) then) =
      __$$TagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$TagImplCopyWithImpl<$Res> extends _$TagCopyWithImpl<$Res, _$TagImpl>
    implements _$$TagImplCopyWith<$Res> {
  __$$TagImplCopyWithImpl(_$TagImpl _value, $Res Function(_$TagImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TagImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagImpl implements _Tag {
  const _$TagImpl({required this.id, required this.name});

  factory _$TagImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Tag(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Tag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagImplCopyWith<_$TagImpl> get copyWith =>
      __$$TagImplCopyWithImpl<_$TagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagImplToJson(
      this,
    );
  }
}

abstract class _Tag implements Tag {
  const factory _Tag({required final int id, required final String name}) =
      _$TagImpl;

  factory _Tag.fromJson(Map<String, dynamic> json) = _$TagImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of Tag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagImplCopyWith<_$TagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "media_type")
  MediaType get mediaType => throw _privateConstructorUsedError;

  /// Serializes this Media to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call(
      {String url,
      @JsonKey(name: "product_id") int productId,
      @JsonKey(name: "media_type") MediaType mediaType});
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? productId = null,
    Object? mediaType = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaImplCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$MediaImplCopyWith(
          _$MediaImpl value, $Res Function(_$MediaImpl) then) =
      __$$MediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      @JsonKey(name: "product_id") int productId,
      @JsonKey(name: "media_type") MediaType mediaType});
}

/// @nodoc
class __$$MediaImplCopyWithImpl<$Res>
    extends _$MediaCopyWithImpl<$Res, _$MediaImpl>
    implements _$$MediaImplCopyWith<$Res> {
  __$$MediaImplCopyWithImpl(
      _$MediaImpl _value, $Res Function(_$MediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? productId = null,
    Object? mediaType = null,
  }) {
    return _then(_$MediaImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaImpl implements _Media {
  const _$MediaImpl(
      {required this.url,
      @JsonKey(name: "product_id") required this.productId,
      @JsonKey(name: "media_type") required this.mediaType});

  factory _$MediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaImplFromJson(json);

  @override
  final String url;
  @override
  @JsonKey(name: "product_id")
  final int productId;
  @override
  @JsonKey(name: "media_type")
  final MediaType mediaType;

  @override
  String toString() {
    return 'Media(url: $url, productId: $productId, mediaType: $mediaType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, productId, mediaType);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      __$$MediaImplCopyWithImpl<_$MediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaImplToJson(
      this,
    );
  }
}

abstract class _Media implements Media {
  const factory _Media(
          {required final String url,
          @JsonKey(name: "product_id") required final int productId,
          @JsonKey(name: "media_type") required final MediaType mediaType}) =
      _$MediaImpl;

  factory _Media.fromJson(Map<String, dynamic> json) = _$MediaImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(name: "product_id")
  int get productId;
  @override
  @JsonKey(name: "media_type")
  MediaType get mediaType;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
