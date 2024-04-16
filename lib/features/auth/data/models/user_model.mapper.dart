// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_model.dart';

class UserModelMapper extends ClassMapperBase<UserModel> {
  UserModelMapper._();

  static UserModelMapper? _instance;
  static UserModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserModel';

  static String _$name(UserModel v) => v.name;
  static const Field<UserModel, String> _f$name = Field('name', _$name);
  static String _$email(UserModel v) => v.email;
  static const Field<UserModel, String> _f$email = Field('email', _$email);
  static DateTime _$updatedAt(UserModel v) => v.updatedAt;
  static const Field<UserModel, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt, key: 'updated_at');
  static DateTime _$createdAt(UserModel v) => v.createdAt;
  static const Field<UserModel, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, key: 'created_at');
  static int _$id(UserModel v) => v.id;
  static const Field<UserModel, int> _f$id = Field('id', _$id);

  @override
  final MappableFields<UserModel> fields = const {
    #name: _f$name,
    #email: _f$email,
    #updatedAt: _f$updatedAt,
    #createdAt: _f$createdAt,
    #id: _f$id,
  };

  static UserModel _instantiate(DecodingData data) {
    return UserModel(
        name: data.dec(_f$name),
        email: data.dec(_f$email),
        updatedAt: data.dec(_f$updatedAt),
        createdAt: data.dec(_f$createdAt),
        id: data.dec(_f$id));
  }

  @override
  final Function instantiate = _instantiate;

  static UserModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserModel>(map);
  }

  static UserModel fromJson(String json) {
    return ensureInitialized().decodeJson<UserModel>(json);
  }
}

mixin UserModelMappable {
  String toJson() {
    return UserModelMapper.ensureInitialized()
        .encodeJson<UserModel>(this as UserModel);
  }

  Map<String, dynamic> toMap() {
    return UserModelMapper.ensureInitialized()
        .encodeMap<UserModel>(this as UserModel);
  }

  UserModelCopyWith<UserModel, UserModel, UserModel> get copyWith =>
      _UserModelCopyWithImpl(this as UserModel, $identity, $identity);
  @override
  String toString() {
    return UserModelMapper.ensureInitialized()
        .stringifyValue(this as UserModel);
  }

  @override
  bool operator ==(Object other) {
    return UserModelMapper.ensureInitialized()
        .equalsValue(this as UserModel, other);
  }

  @override
  int get hashCode {
    return UserModelMapper.ensureInitialized().hashValue(this as UserModel);
  }
}

extension UserModelValueCopy<$R, $Out> on ObjectCopyWith<$R, UserModel, $Out> {
  UserModelCopyWith<$R, UserModel, $Out> get $asUserModel =>
      $base.as((v, t, t2) => _UserModelCopyWithImpl(v, t, t2));
}

abstract class UserModelCopyWith<$R, $In extends UserModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? name,
      String? email,
      DateTime? updatedAt,
      DateTime? createdAt,
      int? id});
  UserModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserModel, $Out>
    implements UserModelCopyWith<$R, UserModel, $Out> {
  _UserModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserModel> $mapper =
      UserModelMapper.ensureInitialized();
  @override
  $R call(
          {String? name,
          String? email,
          DateTime? updatedAt,
          DateTime? createdAt,
          int? id}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (email != null) #email: email,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (createdAt != null) #createdAt: createdAt,
        if (id != null) #id: id
      }));
  @override
  UserModel $make(CopyWithData data) => UserModel(
      name: data.get(#name, or: $value.name),
      email: data.get(#email, or: $value.email),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      id: data.get(#id, or: $value.id));

  @override
  UserModelCopyWith<$R2, UserModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserModelCopyWithImpl($value, $cast, t);
}
