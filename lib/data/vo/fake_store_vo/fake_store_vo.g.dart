// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fake_store_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FakeStoreVO _$FakeStoreVOFromJson(Map<String, dynamic> json) => FakeStoreVO(
      json['id'] as int?,
      json['title'] as String?,
      json['price'] as num?,
      json['description'] as String?,
      json['category'] as String?,
      json['image'] as String?,
      json['rating'] == null
          ? null
          : RatingVO.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FakeStoreVOToJson(FakeStoreVO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'rating': instance.rating,
    };
