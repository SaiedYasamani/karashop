import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product extends Equatable {
  final int? id;
  @JsonKey(name: 'product_groups_id')
  final dynamic productGroupsId;
  @JsonKey(name: 'user_id')
  final int? userId;
  final String? title;
  final dynamic code;
  final String? slug;
  @JsonKey(name: 'short_description')
  final dynamic shortDescription;
  final String? details;
  final String? type;
  final dynamic inventory;
  final String? price;
  final dynamic additional;
  @JsonKey(name: 'discount_price')
  final dynamic discountPrice;
  @JsonKey(name: 'off_rate')
  final dynamic offRate;
  @JsonKey(name: 'second_hand')
  final int? secondHand;
  final String? status;
  @JsonKey(name: 'brand_img')
  final String? brandImg;
  final String? badge;
  final dynamic attributes;
  @JsonKey(name: 'deleted_at')
  final dynamic deletedAt;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  final List<dynamic>? inventories;
  final List<dynamic>? meta;
  final dynamic group;

  const Product({
    this.id,
    this.productGroupsId,
    this.userId,
    this.title,
    this.code,
    this.slug,
    this.shortDescription,
    this.details,
    this.type,
    this.inventory,
    this.price,
    this.additional,
    this.discountPrice,
    this.offRate,
    this.secondHand,
    this.status,
    this.brandImg,
    this.badge,
    this.attributes,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.inventories,
    this.meta,
    this.group,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      productGroupsId,
      userId,
      title,
      code,
      slug,
      shortDescription,
      details,
      type,
      inventory,
      price,
      additional,
      discountPrice,
      offRate,
      secondHand,
      status,
      brandImg,
      badge,
      attributes,
      deletedAt,
      createdAt,
      updatedAt,
      inventories,
      meta,
      group,
    ];
  }
}
