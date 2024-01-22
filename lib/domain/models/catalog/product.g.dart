// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductCard _$$_ProductCardFromJson(Map<String, dynamic> json) =>
    _$_ProductCard(
      id: json['id'] as int,
      price: Decimal.fromJson(json['price'] as String),
      count: json['count'] as int?,
      oldPrice: json['old_price'] == null
          ? null
          : Decimal.fromJson(json['old_price'] as String),
      discount: (json['discount'] as num?)?.toDouble(),
      name: json['name'] as String?,
      brand: json['brand'] as String,
      picture: json['picture'] as String,
      article: json['article'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      reviewsCount: json['reviews_count'] as int?,
    );

Map<String, dynamic> _$$_ProductCardToJson(_$_ProductCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'count': instance.count,
      'old_price': instance.oldPrice,
      'discount': instance.discount,
      'name': instance.name,
      'brand': instance.brand,
      'picture': instance.picture,
      'article': instance.article,
      'rating': instance.rating,
      'reviews_count': instance.reviewsCount,
    };
