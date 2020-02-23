// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread-model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThreadModel _$ThreadModelFromJson(Map<String, dynamic> json) {
  return ThreadModel(
    json['number'] as int,
    json['subject'] as String,
    (json['posts'] as List)
        ?.map(
            (e) => e == null ? null : Post.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ThreadModelToJson(ThreadModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'subject': instance.subject,
      'posts': instance.posts?.map((e) => e?.toJson())?.toList(),
    };
