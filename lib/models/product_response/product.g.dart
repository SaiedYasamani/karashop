// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: (json['id'] as num?)?.toInt(),
      productGroupsId: json['product_groups_id'],
      userId: (json['user_id'] as num?)?.toInt(),
      title: json['title'] as String?,
      code: json['code'],
      slug: json['slug'] as String?,
      shortDescription: json['short_description'],
      details: json['details'] as String?,
      type: json['type'] as String?,
      inventory: json['inventory'],
      price: json['price'] as String?,
      additional: json['additional'],
      discountPrice: json['discount_price'],
      offRate: json['off_rate'],
      secondHand: (json['second_hand'] as num?)?.toInt(),
      status: json['status'] as String?,
      brandImg: json['brand_img'] as String?,
      badge: json['badge'] as String?,
      attributes: json['attributes'],
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      inventories: json['inventories'] as List<dynamic>?,
      meta: json['meta'] as List<dynamic>?,
      group: json['group'],
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'product_groups_id': instance.productGroupsId,
      'user_id': instance.userId,
      'title': instance.title,
      'code': instance.code,
      'slug': instance.slug,
      'short_description': instance.shortDescription,
      'details': instance.details,
      'type': instance.type,
      'inventory': instance.inventory,
      'price': instance.price,
      'additional': instance.additional,
      'discount_price': instance.discountPrice,
      'off_rate': instance.offRate,
      'second_hand': instance.secondHand,
      'status': instance.status,
      'brand_img': instance.brandImg,
      'badge': instance.badge,
      'attributes': instance.attributes,
      'deleted_at': instance.deletedAt,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'inventories': instance.inventories,
      'meta': instance.meta,
      'group': instance.group,
    };
