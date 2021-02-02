// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpsertMember$MutationRoot$InsertMemberOne
    _$UpsertMember$MutationRoot$InsertMemberOneFromJson(
        Map<String, dynamic> json) {
  return UpsertMember$MutationRoot$InsertMemberOne()
    ..id = json['id'] as String
    ..createdAt = DateTime.parse(json['created_at'] as String)
    ..updatedAt = DateTime.parse(json['updated_at'] as String)
    ..displayName = json['display_name'] as String
    ..photoUrl = json['photo_url'] as String
    ..email = json['email'] as String
    ..phone = json['phone'] as String;
}

Map<String, dynamic> _$UpsertMember$MutationRoot$InsertMemberOneToJson(
        UpsertMember$MutationRoot$InsertMemberOne instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'display_name': instance.displayName,
      'photo_url': instance.photoUrl,
      'email': instance.email,
      'phone': instance.phone,
    };

UpsertMember$MutationRoot _$UpsertMember$MutationRootFromJson(
    Map<String, dynamic> json) {
  return UpsertMember$MutationRoot()
    ..insertMemberOne = UpsertMember$MutationRoot$InsertMemberOne.fromJson(
        json['insert_member_one'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UpsertMember$MutationRootToJson(
        UpsertMember$MutationRoot instance) =>
    <String, dynamic>{
      'insert_member_one': instance.insertMemberOne.toJson(),
    };

FindMember$QueryRoot$Member _$FindMember$QueryRoot$MemberFromJson(
    Map<String, dynamic> json) {
  return FindMember$QueryRoot$Member()
    ..id = json['id'] as String
    ..createdAt = DateTime.parse(json['created_at'] as String)
    ..updatedAt = DateTime.parse(json['updated_at'] as String)
    ..displayName = json['display_name'] as String
    ..photoUrl = json['photo_url'] as String
    ..email = json['email'] as String
    ..phone = json['phone'] as String;
}

Map<String, dynamic> _$FindMember$QueryRoot$MemberToJson(
        FindMember$QueryRoot$Member instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'display_name': instance.displayName,
      'photo_url': instance.photoUrl,
      'email': instance.email,
      'phone': instance.phone,
    };

FindMember$QueryRoot _$FindMember$QueryRootFromJson(Map<String, dynamic> json) {
  return FindMember$QueryRoot()
    ..member = (json['member'] as List)
        .map((e) =>
            FindMember$QueryRoot$Member.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$FindMember$QueryRootToJson(
        FindMember$QueryRoot instance) =>
    <String, dynamic>{
      'member': instance.member.map((e) => e.toJson()).toList(),
    };

ReadLastArticles$QueryRoot$Article _$ReadLastArticles$QueryRoot$ArticleFromJson(
    Map<String, dynamic> json) {
  return ReadLastArticles$QueryRoot$Article()
    ..id = json['id'] as String
    ..createdAt = DateTime.parse(json['created_at'] as String)
    ..updatedAt = DateTime.parse(json['updated_at'] as String)
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..bannerUrl = json['banner_url'] as String
    ..member = ArticleFieldsMixin$Member.fromJson(
        json['member'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ReadLastArticles$QueryRoot$ArticleToJson(
        ReadLastArticles$QueryRoot$Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
      'banner_url': instance.bannerUrl,
      'member': instance.member.toJson(),
    };

ReadLastArticles$QueryRoot _$ReadLastArticles$QueryRootFromJson(
    Map<String, dynamic> json) {
  return ReadLastArticles$QueryRoot()
    ..article = (json['article'] as List)
        .map((e) => ReadLastArticles$QueryRoot$Article.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$ReadLastArticles$QueryRootToJson(
        ReadLastArticles$QueryRoot instance) =>
    <String, dynamic>{
      'article': instance.article.map((e) => e.toJson()).toList(),
    };

ArticleFieldsMixin$Member _$ArticleFieldsMixin$MemberFromJson(
    Map<String, dynamic> json) {
  return ArticleFieldsMixin$Member()
    ..id = json['id'] as String
    ..displayName = json['display_name'] as String
    ..photoUrl = json['photo_url'] as String
    ..email = json['email'] as String
    ..phone = json['phone'] as String;
}

Map<String, dynamic> _$ArticleFieldsMixin$MemberToJson(
        ArticleFieldsMixin$Member instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_name': instance.displayName,
      'photo_url': instance.photoUrl,
      'email': instance.email,
      'phone': instance.phone,
    };

CreateArticle$MutationRoot$InsertArticleOne
    _$CreateArticle$MutationRoot$InsertArticleOneFromJson(
        Map<String, dynamic> json) {
  return CreateArticle$MutationRoot$InsertArticleOne()
    ..id = json['id'] as String
    ..createdAt = DateTime.parse(json['created_at'] as String)
    ..updatedAt = DateTime.parse(json['updated_at'] as String)
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..bannerUrl = json['banner_url'] as String
    ..member = ArticleFieldsMixin$Member.fromJson(
        json['member'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateArticle$MutationRoot$InsertArticleOneToJson(
        CreateArticle$MutationRoot$InsertArticleOne instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
      'banner_url': instance.bannerUrl,
      'member': instance.member.toJson(),
    };

CreateArticle$MutationRoot _$CreateArticle$MutationRootFromJson(
    Map<String, dynamic> json) {
  return CreateArticle$MutationRoot()
    ..insertArticleOne = CreateArticle$MutationRoot$InsertArticleOne.fromJson(
        json['insert_article_one'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CreateArticle$MutationRootToJson(
        CreateArticle$MutationRoot instance) =>
    <String, dynamic>{
      'insert_article_one': instance.insertArticleOne.toJson(),
    };

UpsertMemberArguments _$UpsertMemberArgumentsFromJson(
    Map<String, dynamic> json) {
  return UpsertMemberArguments(
    display_name: json['display_name'] as String,
    photo_url: json['photo_url'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
  );
}

Map<String, dynamic> _$UpsertMemberArgumentsToJson(
        UpsertMemberArguments instance) =>
    <String, dynamic>{
      'display_name': instance.display_name,
      'photo_url': instance.photo_url,
      'email': instance.email,
      'phone': instance.phone,
    };

FindMemberArguments _$FindMemberArgumentsFromJson(Map<String, dynamic> json) {
  return FindMemberArguments(
    email: json['email'] as String,
    phone: json['phone'] as String,
  );
}

Map<String, dynamic> _$FindMemberArgumentsToJson(
        FindMemberArguments instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
    };

CreateArticleArguments _$CreateArticleArgumentsFromJson(
    Map<String, dynamic> json) {
  return CreateArticleArguments(
    member_id: json['member_id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    banner_url: json['banner_url'] as String,
  );
}

Map<String, dynamic> _$CreateArticleArgumentsToJson(
        CreateArticleArguments instance) =>
    <String, dynamic>{
      'member_id': instance.member_id,
      'title': instance.title,
      'description': instance.description,
      'banner_url': instance.banner_url,
    };
