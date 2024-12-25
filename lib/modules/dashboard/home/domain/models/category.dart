import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class ProductCategory with _$ProductCategory {
  const factory ProductCategory(
      {required int id,
      required String name,
      @JsonKey(name: "group_name") String? groupName,
      required String poster}) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);
}
