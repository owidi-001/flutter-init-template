// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductQueryImpl _$$ProductQueryImplFromJson(Map<String, dynamic> json) =>
    _$ProductQueryImpl(
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['page_size'] as num?)?.toInt(),
      keyword: json['keyword'] as String?,
      merchantId: (json['merchant_id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductQueryImplToJson(_$ProductQueryImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'page_size': instance.pageSize,
      'keyword': instance.keyword,
      'merchant_id': instance.merchantId,
      'category_id': instance.categoryId,
    };

_$ProductCreateDataImpl _$$ProductCreateDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductCreateDataImpl(
      name: json['name'] as String,
      baseRentalFee: (json['base_rental_fee'] as num).toInt(),
      available: json['available'] as bool,
      description: json['description'] as String,
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      inStock: (json['in_stock'] as num).toInt(),
      categoryId: (json['category_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductCreateDataImplToJson(
        _$ProductCreateDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'base_rental_fee': instance.baseRentalFee,
      'available': instance.available,
      'description': instance.description,
      'tags': instance.tags,
      'in_stock': instance.inStock,
      'category_id': instance.categoryId,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      poster: json['poster'] as String,
      available: json['available'] as bool,
      description: json['description'] as String,
      categoryId: (json['category_id'] as num).toInt(),
      reviewsCount: (json['reviews_count'] as num).toInt(),
      rating: (json['rating'] as num).toDouble(),
      favoriteCount: (json['favorite_count'] as num?)?.toInt(),
      inStock: (json['in_stock'] as num).toInt(),
      displayFee: (json['display_fee'] as num).toDouble(),
      media: (json['media'] as List<dynamic>?)
              ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      replacementCost: (json['replacement_cost'] as num?)?.toDouble(),
      baseRentalFee: (json['base_rental_fee'] as num).toDouble(),
      insuranceFee: (json['insurance_fee'] as num).toDouble(),
      serviceFee: (json['service_fee'] as num).toDouble(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'poster': instance.poster,
      'available': instance.available,
      'description': instance.description,
      'category_id': instance.categoryId,
      'reviews_count': instance.reviewsCount,
      'rating': instance.rating,
      'favorite_count': instance.favoriteCount,
      'in_stock': instance.inStock,
      'display_fee': instance.displayFee,
      'media': instance.media,
      'tags': instance.tags,
      'variants': instance.variants,
      'replacement_cost': instance.replacementCost,
      'base_rental_fee': instance.baseRentalFee,
      'insurance_fee': instance.insuranceFee,
      'service_fee': instance.serviceFee,
    };

_$VariantImpl _$$VariantImplFromJson(Map<String, dynamic> json) =>
    _$VariantImpl(
      id: (json['id'] as num).toInt(),
      color: json['color'] as String,
      size: json['size'] as String,
      inStock: (json['in_stock'] as num).toInt(),
      priceIncrement: (json['price_increment'] as num).toDouble(),
      media: (json['media'] as List<dynamic>?)
              ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$VariantImplToJson(_$VariantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'color': instance.color,
      'size': instance.size,
      'in_stock': instance.inStock,
      'price_increment': instance.priceIncrement,
      'media': instance.media,
    };

_$TagImpl _$$TagImplFromJson(Map<String, dynamic> json) => _$TagImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$TagImplToJson(_$TagImpl instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$MediaImpl _$$MediaImplFromJson(Map<String, dynamic> json) => _$MediaImpl(
      url: json['url'] as String,
      productId: (json['product_id'] as num).toInt(),
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['media_type']),
    );

Map<String, dynamic> _$$MediaImplToJson(_$MediaImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'product_id': instance.productId,
      'media_type': _$MediaTypeEnumMap[instance.mediaType]!,
    };

const _$MediaTypeEnumMap = {
  MediaType.IMAGE: 'IMAGE',
  MediaType.VIDEO: 'VIDEO',
};
