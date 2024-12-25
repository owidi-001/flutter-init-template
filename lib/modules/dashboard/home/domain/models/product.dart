import 'dart:io';

import 'package:route_mate/core/utils/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class ProductQuery with _$ProductQuery {
  const factory ProductQuery({
    int? page,
    @JsonKey(name: "page_size") int? pageSize,
    String? keyword,
    @JsonKey(name: "merchant_id") int? merchantId,
    @JsonKey(name: "category_id") int? categoryId,
  }) = _ProductQuery;

  factory ProductQuery.fromJson(Map<String, dynamic> json) =>
      _$ProductQueryFromJson(json);
}

extension ProductQueryExtension on ProductQuery {
  Map<String, dynamic> toQueryParameters() {
    final Map<String, dynamic> params = {};

    if (page != null) params['page'] = page;
    if (pageSize != null) params['page_size'] = pageSize;
    if (keyword != null) params['keyword'] = keyword;
    if (merchantId != null) params['merchant_id'] = merchantId;
    if (categoryId != null) params['category_id'] = categoryId;

    return params;
  }
}

@freezed
class ProductCreateData with _$ProductCreateData {
  const factory ProductCreateData({
    required String name,
    @JsonKey(name: "base_rental_fee") required int baseRentalFee,
    required bool available,
    required String description,
    @Default([]) List<int> tags,
    @JsonKey(includeFromJson: false, includeToJson: false) File? poster,
    @JsonKey(name: "in_stock") required int inStock,
    @JsonKey(name: "category_id") required int categoryId,
  }) = _ProductCreateData;

  factory ProductCreateData.fromJson(Map<String, dynamic> json) =>
      _$ProductCreateDataFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String name,
    required String poster,
    // @JsonKey(name: "merchant") required Merchant merchant,
    required bool available,
    required String description,
    @JsonKey(name: "category_id") required int categoryId,
    @JsonKey(name: "reviews_count") required int reviewsCount,
    required double rating,
    @JsonKey(name: "favorite_count") int? favoriteCount,
    @JsonKey(name: "in_stock") required int inStock,
    @JsonKey(name: "display_fee") required double displayFee,
    @Default([]) List<Media> media,
    @Default([]) List<Tag> tags,
    @Default([]) List<Variant> variants,
    @JsonKey(name: "replacement_cost") double? replacementCost,
    @JsonKey(name: "base_rental_fee") required double baseRentalFee,
    @JsonKey(name: "insurance_fee") required double insuranceFee,
    @JsonKey(name: "service_fee") required double serviceFee,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class Variant with _$Variant {
  const factory Variant(
      {required int id,
      required String color,
      required String size,
      @JsonKey(name: 'in_stock') required int inStock,
      @JsonKey(name: 'price_increment') required double priceIncrement,
      @Default([]) List<Media> media}) = _Variant;

  factory Variant.fromJson(Map<String, dynamic> json) =>
      _$VariantFromJson(json);
}

@freezed
class Tag with _$Tag {
  const factory Tag({
    required int id,
    required String name,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}

@freezed
class Media with _$Media {
  const factory Media(
      {required String url,
      @JsonKey(name: "product_id") required int productId,
      @JsonKey(name: "media_type") required MediaType mediaType}) = _Media;

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}
