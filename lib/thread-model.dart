
import 'package:dektor/post-model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'thread-model.g.dart';

@JsonSerializable(explicitToJson: true)
class ThreadModel {
  ThreadModel(this.number, this.subject, this.posts);
  final int number;
  final String subject;
  final List<Post> posts;
  factory ThreadModel.fromJson(Map<String, dynamic> json) => _$ThreadModelFromJson(json);
  Map<String, dynamic> toJson() => _$ThreadModelToJson(this);
}
