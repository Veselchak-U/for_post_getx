// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

mixin MemberFieldsMixin {
  String id;
  @JsonKey(name: 'created_at')
  DateTime createdAt;
  @JsonKey(name: 'updated_at')
  DateTime updatedAt;
  @JsonKey(name: 'display_name')
  String displayName;
  @JsonKey(name: 'photo_url')
  String photoUrl;
  String email;
  String phone;
}
mixin ArticleFieldsMixin {
  String id;
  @JsonKey(name: 'created_at')
  DateTime createdAt;
  @JsonKey(name: 'updated_at')
  DateTime updatedAt;
  String title;
  String description;
  @JsonKey(name: 'banner_url')
  String bannerUrl;
  ArticleFieldsMixin$Member member;
}

@JsonSerializable(explicitToJson: true)
class UpsertMember$MutationRoot$InsertMemberOne
    with EquatableMixin, MemberFieldsMixin {
  UpsertMember$MutationRoot$InsertMemberOne();

  factory UpsertMember$MutationRoot$InsertMemberOne.fromJson(
          Map<String, dynamic> json) =>
      _$UpsertMember$MutationRoot$InsertMemberOneFromJson(json);

  @override
  List<Object> get props =>
      [id, createdAt, updatedAt, displayName, photoUrl, email, phone];
  Map<String, dynamic> toJson() =>
      _$UpsertMember$MutationRoot$InsertMemberOneToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpsertMember$MutationRoot with EquatableMixin {
  UpsertMember$MutationRoot();

  factory UpsertMember$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$UpsertMember$MutationRootFromJson(json);

  @JsonKey(name: 'insert_member_one')
  UpsertMember$MutationRoot$InsertMemberOne insertMemberOne;

  @override
  List<Object> get props => [insertMemberOne];
  Map<String, dynamic> toJson() => _$UpsertMember$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindMember$QueryRoot$Member with EquatableMixin, MemberFieldsMixin {
  FindMember$QueryRoot$Member();

  factory FindMember$QueryRoot$Member.fromJson(Map<String, dynamic> json) =>
      _$FindMember$QueryRoot$MemberFromJson(json);

  @override
  List<Object> get props =>
      [id, createdAt, updatedAt, displayName, photoUrl, email, phone];
  Map<String, dynamic> toJson() => _$FindMember$QueryRoot$MemberToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindMember$QueryRoot with EquatableMixin {
  FindMember$QueryRoot();

  factory FindMember$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$FindMember$QueryRootFromJson(json);

  List<FindMember$QueryRoot$Member> member;

  @override
  List<Object> get props => [member];
  Map<String, dynamic> toJson() => _$FindMember$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadLastArticles$QueryRoot$Article
    with EquatableMixin, ArticleFieldsMixin {
  ReadLastArticles$QueryRoot$Article();

  factory ReadLastArticles$QueryRoot$Article.fromJson(
          Map<String, dynamic> json) =>
      _$ReadLastArticles$QueryRoot$ArticleFromJson(json);

  @override
  List<Object> get props =>
      [id, createdAt, updatedAt, title, description, bannerUrl, member];
  Map<String, dynamic> toJson() =>
      _$ReadLastArticles$QueryRoot$ArticleToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ReadLastArticles$QueryRoot with EquatableMixin {
  ReadLastArticles$QueryRoot();

  factory ReadLastArticles$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$ReadLastArticles$QueryRootFromJson(json);

  List<ReadLastArticles$QueryRoot$Article> article;

  @override
  List<Object> get props => [article];
  Map<String, dynamic> toJson() => _$ReadLastArticles$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ArticleFieldsMixin$Member with EquatableMixin {
  ArticleFieldsMixin$Member();

  factory ArticleFieldsMixin$Member.fromJson(Map<String, dynamic> json) =>
      _$ArticleFieldsMixin$MemberFromJson(json);

  String id;

  @JsonKey(name: 'display_name')
  String displayName;

  @JsonKey(name: 'photo_url')
  String photoUrl;

  String email;

  String phone;

  @override
  List<Object> get props => [id, displayName, photoUrl, email, phone];
  Map<String, dynamic> toJson() => _$ArticleFieldsMixin$MemberToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateArticle$MutationRoot$InsertArticleOne
    with EquatableMixin, ArticleFieldsMixin {
  CreateArticle$MutationRoot$InsertArticleOne();

  factory CreateArticle$MutationRoot$InsertArticleOne.fromJson(
          Map<String, dynamic> json) =>
      _$CreateArticle$MutationRoot$InsertArticleOneFromJson(json);

  @override
  List<Object> get props =>
      [id, createdAt, updatedAt, title, description, bannerUrl, member];
  Map<String, dynamic> toJson() =>
      _$CreateArticle$MutationRoot$InsertArticleOneToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateArticle$MutationRoot with EquatableMixin {
  CreateArticle$MutationRoot();

  factory CreateArticle$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$CreateArticle$MutationRootFromJson(json);

  @JsonKey(name: 'insert_article_one')
  CreateArticle$MutationRoot$InsertArticleOne insertArticleOne;

  @override
  List<Object> get props => [insertArticleOne];
  Map<String, dynamic> toJson() => _$CreateArticle$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpsertMemberArguments extends JsonSerializable with EquatableMixin {
  UpsertMemberArguments(
      {this.display_name,
      this.photo_url,
      @required this.email,
      @required this.phone});

  @override
  factory UpsertMemberArguments.fromJson(Map<String, dynamic> json) =>
      _$UpsertMemberArgumentsFromJson(json);

  final String display_name;

  final String photo_url;

  final String email;

  final String phone;

  @override
  List<Object> get props => [display_name, photo_url, email, phone];
  @override
  Map<String, dynamic> toJson() => _$UpsertMemberArgumentsToJson(this);
}

class UpsertMemberMutation
    extends GraphQLQuery<UpsertMember$MutationRoot, UpsertMemberArguments> {
  UpsertMemberMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'UpsertMember'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'display_name')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'photo_url')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: false),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'email')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'phone')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'insert_member_one'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'object'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'display_name'),
                          value: VariableNode(
                              name: NameNode(value: 'display_name'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'photo_url'),
                          value:
                              VariableNode(name: NameNode(value: 'photo_url'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'email'),
                          value: VariableNode(name: NameNode(value: 'email'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'phone'),
                          value: VariableNode(name: NameNode(value: 'phone')))
                    ])),
                ArgumentNode(
                    name: NameNode(value: 'on_conflict'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'constraint'),
                          value: EnumValueNode(
                              name: NameNode(value: 'member_email_phone_key'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'update_columns'),
                          value: ListValueNode(values: [
                            EnumValueNode(
                                name: NameNode(value: 'display_name')),
                            EnumValueNode(name: NameNode(value: 'photo_url'))
                          ]))
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'MemberFields'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'MemberFields'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'member'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'created_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'updated_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'display_name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'photo_url'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'email'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'phone'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'UpsertMember';

  @override
  final UpsertMemberArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  UpsertMember$MutationRoot parse(Map<String, dynamic> json) =>
      UpsertMember$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FindMemberArguments extends JsonSerializable with EquatableMixin {
  FindMemberArguments({@required this.email, @required this.phone});

  @override
  factory FindMemberArguments.fromJson(Map<String, dynamic> json) =>
      _$FindMemberArgumentsFromJson(json);

  final String email;

  final String phone;

  @override
  List<Object> get props => [email, phone];
  @override
  Map<String, dynamic> toJson() => _$FindMemberArgumentsToJson(this);
}

class FindMemberQuery
    extends GraphQLQuery<FindMember$QueryRoot, FindMemberArguments> {
  FindMemberQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'FindMember'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'email')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'phone')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'member'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'where'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'email'),
                          value: ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: '_eq'),
                                value: VariableNode(
                                    name: NameNode(value: 'email')))
                          ])),
                      ObjectFieldNode(
                          name: NameNode(value: '_and'),
                          value: ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'phone'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: '_eq'),
                                      value: VariableNode(
                                          name: NameNode(value: 'phone')))
                                ]))
                          ]))
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'MemberFields'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'MemberFields'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'member'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'created_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'updated_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'display_name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'photo_url'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'email'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'phone'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null)
        ]))
  ]);

  @override
  final String operationName = 'FindMember';

  @override
  final FindMemberArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  FindMember$QueryRoot parse(Map<String, dynamic> json) =>
      FindMember$QueryRoot.fromJson(json);
}

class ReadLastArticlesQuery
    extends GraphQLQuery<ReadLastArticles$QueryRoot, JsonSerializable> {
  ReadLastArticlesQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'ReadLastArticles'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'article'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'order_by'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'updated_at'),
                          value: EnumValueNode(name: NameNode(value: 'desc')))
                    ])),
                ArgumentNode(
                    name: NameNode(value: 'limit'),
                    value: IntValueNode(value: '10'))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'ArticleFields'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'ArticleFields'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'article'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'created_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'updated_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'title'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'description'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'banner_url'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'member'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'display_name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'photo_url'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'email'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'phone'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'ReadLastArticles';

  @override
  List<Object> get props => [document, operationName];
  @override
  ReadLastArticles$QueryRoot parse(Map<String, dynamic> json) =>
      ReadLastArticles$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateArticleArguments extends JsonSerializable with EquatableMixin {
  CreateArticleArguments(
      {@required this.member_id,
      @required this.title,
      @required this.description,
      @required this.banner_url});

  @override
  factory CreateArticleArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateArticleArgumentsFromJson(json);

  final String member_id;

  final String title;

  final String description;

  final String banner_url;

  @override
  List<Object> get props => [member_id, title, description, banner_url];
  @override
  Map<String, dynamic> toJson() => _$CreateArticleArgumentsToJson(this);
}

class CreateArticleMutation
    extends GraphQLQuery<CreateArticle$MutationRoot, CreateArticleArguments> {
  CreateArticleMutation({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.mutation,
        name: NameNode(value: 'CreateArticle'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'member_id')),
              type:
                  NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'title')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'description')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: []),
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'banner_url')),
              type: NamedTypeNode(
                  name: NameNode(value: 'String'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'insert_article_one'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'object'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                          name: NameNode(value: 'member_id'),
                          value:
                              VariableNode(name: NameNode(value: 'member_id'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'title'),
                          value: VariableNode(name: NameNode(value: 'title'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'description'),
                          value: VariableNode(
                              name: NameNode(value: 'description'))),
                      ObjectFieldNode(
                          name: NameNode(value: 'banner_url'),
                          value:
                              VariableNode(name: NameNode(value: 'banner_url')))
                    ]))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FragmentSpreadNode(
                    name: NameNode(value: 'ArticleFields'), directives: [])
              ]))
        ])),
    FragmentDefinitionNode(
        name: NameNode(value: 'ArticleFields'),
        typeCondition: TypeConditionNode(
            on: NamedTypeNode(
                name: NameNode(value: 'article'), isNonNull: false)),
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'created_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'updated_at'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'title'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'description'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'banner_url'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null),
          FieldNode(
              name: NameNode(value: 'member'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'display_name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'photo_url'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'email'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'phone'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'CreateArticle';

  @override
  final CreateArticleArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  CreateArticle$MutationRoot parse(Map<String, dynamic> json) =>
      CreateArticle$MutationRoot.fromJson(json);
}
