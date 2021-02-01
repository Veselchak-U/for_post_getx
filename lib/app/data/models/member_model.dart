class MemberModel {
  String id;
  DateTime createdAt;
  DateTime updatedAt;
  String displayName;
  String photoUrl;
  String email;
  String phone;

  MemberModel(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.displayName,
      this.photoUrl,
      this.email,
      this.phone});

  MemberModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String);
    updatedAt = json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String);
    displayName = json['display_name'];
    photoUrl = json['photo_url'];
    email = json['email'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['created_at'] = this.createdAt?.toIso8601String();
    data['updated_at'] = this.updatedAt?.toIso8601String();
    data['display_name'] = this.displayName;
    data['photo_url'] = this.photoUrl;
    data['email'] = this.email;
    data['phone'] = this.phone;
    return data;
  }
}
