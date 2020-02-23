// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post-model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) {
  return Post(
    number: json['number'] as int,
    name: json['name'] as String,
    text: json['text'] as String,
  )
    ..utc = json['utc'] == null ? null : DateTime.parse(json['utc'] as String)
    ..media = (json['media'] as List)
        ?.map((e) => e == null
            ? null
            : MediaContainer.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..replies = (json['replies'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'utc': instance.utc?.toIso8601String(),
      'text': instance.text,
      'media': instance.media?.map((e) => e?.toJson())?.toList(),
      'replies': instance.replies,
    };

MediaContainer _$MediaContainerFromJson(Map<String, dynamic> json) {
  return MediaContainer()
    ..id = json['id'] as int
    ..info = json['info'] == null
        ? null
        : MediaInfo.fromJson(json['info'] as Map<String, dynamic>)
    ..thumbnail = json['thumbnail'] == null
        ? null
        : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>)
    ..mediaSizeKb = json['mediaSizeKb'] as String
    ..title = json['title'] as String
    ..mediaType = json['mediaType'] as String;
}

Map<String, dynamic> _$MediaContainerToJson(MediaContainer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'info': instance.info?.toJson(),
      'thumbnail': instance.thumbnail?.toJson(),
      'mediaSizeKb': instance.mediaSizeKb,
      'title': instance.title,
      'mediaType': instance.mediaType,
    };

MediaInfo _$MediaInfoFromJson(Map<String, dynamic> json) {
  return MediaInfo()
    ..link = json['link'] as int
    ..height = json['height'] as int
    ..width = json['width'] as int
    ..contentId = json['contentId'] as String
    ..contentLength = json['contentLength'] as int
    ..mimeType = json['mimeType'] as String;
}

Map<String, dynamic> _$MediaInfoToJson(MediaInfo instance) => <String, dynamic>{
      'link': instance.link,
      'height': instance.height,
      'width': instance.width,
      'contentId': instance.contentId,
      'contentLength': instance.contentLength,
      'mimeType': instance.mimeType,
    };

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) {
  return Thumbnail()
    ..link = json['link'] as int
    ..height = json['height'] as int
    ..width = json['width'] as int
    ..contentId = json['contentId'] as String
    ..contentLen = json['contentLen'] as int
    ..mimeType = json['mimeType'] as String;
}

Map<String, dynamic> _$ThumbnailToJson(Thumbnail instance) => <String, dynamic>{
      'link': instance.link,
      'height': instance.height,
      'width': instance.width,
      'contentId': instance.contentId,
      'contentLen': instance.contentLen,
      'mimeType': instance.mimeType,
    };
