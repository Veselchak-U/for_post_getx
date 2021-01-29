import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:for_post/import.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@CopyWith()
@JsonSerializable()
class ArticleModel {
  const ArticleModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.member,
    this.title,
    this.description,
    this.bannerUrl,
  });

  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final MemberModel member;
  final String title;
  final String description;
  final String bannerUrl;

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}
