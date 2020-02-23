import 'package:json_annotation/json_annotation.dart';

part 'post-model.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(explicitToJson: true)
class Post {
  int number;
  String name = 'Anonymous';
  DateTime utc;
  String text;
  List<MediaContainer> media;
  List<int> replies;
  Post({this.number, this.name, this.text});
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}
@JsonSerializable(explicitToJson: true)
class MediaContainer {
  int id;
  MediaInfo info;
  Thumbnail thumbnail;
  String mediaSizeKb;
  String title;
  String mediaType;
  MediaContainer();
  factory MediaContainer.fromJson(Map<String, dynamic> json) => _$MediaContainerFromJson(json);
  Map<String, dynamic> toJson() => _$MediaContainerToJson(this);
}
@JsonSerializable(explicitToJson: true)
class MediaInfo {
  int link;
  int height;
  int width;
  String contentId;
  int contentLength;
  String mimeType = "text/plain";
  MediaInfo();
  factory MediaInfo.fromJson(Map<String, dynamic> json) => _$MediaInfoFromJson(json);
  Map<String, dynamic> toJson() => _$MediaInfoToJson(this);
}
@JsonSerializable(explicitToJson: true)
class Thumbnail {
  int link;
  int height;
  int width;
  // Spring Content managed attributes
  String contentId;
  int contentLen;
  String mimeType = "text/plain";
  Thumbnail();
  factory Thumbnail.fromJson(Map<String, dynamic> json) => _$ThumbnailFromJson(json);
  Map<String, dynamic> toJson() => _$ThumbnailToJson(this);
}
