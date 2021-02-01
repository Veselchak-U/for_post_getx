import 'package:generation_1/app/data/models/member_model.dart';

class ArticleModel {
  String id;
  String createdAt;
  String updatedAt;
  MemberModel member;
  String title;
  String description;
  String bannerUrl;

  ArticleModel(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.member,
      this.title,
      this.description,
      this.bannerUrl});

  ArticleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    member = MemberModel.fromJson(json['member'] as Map<String, dynamic>);
    title = json['title'];
    description = json['description'];
    bannerUrl = json['banner_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['member'] = this.member.toJson();
    data['title'] = this.title;
    data['description'] = this.description;
    data['banner_url'] = this.bannerUrl;
    return data;
  }
}
