// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'profile_model.dart';

class ProfileModelMapper extends ClassMapperBase<ProfileModel> {
  ProfileModelMapper._();

  static ProfileModelMapper? _instance;
  static ProfileModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProfileModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ProfileModel';

  static int _$id(ProfileModel v) => v.id;
  static const Field<ProfileModel, int> _f$id = Field('id', _$id);
  static int _$userId(ProfileModel v) => v.userId;
  static const Field<ProfileModel, int> _f$userId =
      Field('userId', _$userId, key: 'user_id');
  static String _$firstName(ProfileModel v) => v.firstName;
  static const Field<ProfileModel, String> _f$firstName =
      Field('firstName', _$firstName, key: 'first_name');
  static String _$lastName(ProfileModel v) => v.lastName;
  static const Field<ProfileModel, String> _f$lastName =
      Field('lastName', _$lastName, key: 'last_name');
  static String _$address(ProfileModel v) => v.address;
  static const Field<ProfileModel, String> _f$address =
      Field('address', _$address);
  static DateTime _$createdAt(ProfileModel v) => v.createdAt;
  static const Field<ProfileModel, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, key: 'created_at');
  static DateTime _$updatedAt(ProfileModel v) => v.updatedAt;
  static const Field<ProfileModel, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt, key: 'updated_at');
  static String? _$middleName(ProfileModel v) => v.middleName;
  static const Field<ProfileModel, String> _f$middleName =
      Field('middleName', _$middleName, key: 'middle_name', opt: true);

  @override
  final MappableFields<ProfileModel> fields = const {
    #id: _f$id,
    #userId: _f$userId,
    #firstName: _f$firstName,
    #lastName: _f$lastName,
    #address: _f$address,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #middleName: _f$middleName,
  };

  static ProfileModel _instantiate(DecodingData data) {
    return ProfileModel(
        id: data.dec(_f$id),
        userId: data.dec(_f$userId),
        firstName: data.dec(_f$firstName),
        lastName: data.dec(_f$lastName),
        address: data.dec(_f$address),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt),
        middleName: data.dec(_f$middleName));
  }

  @override
  final Function instantiate = _instantiate;

  static ProfileModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProfileModel>(map);
  }

  static ProfileModel fromJson(String json) {
    return ensureInitialized().decodeJson<ProfileModel>(json);
  }
}

mixin ProfileModelMappable {
  String toJson() {
    return ProfileModelMapper.ensureInitialized()
        .encodeJson<ProfileModel>(this as ProfileModel);
  }

  Map<String, dynamic> toMap() {
    return ProfileModelMapper.ensureInitialized()
        .encodeMap<ProfileModel>(this as ProfileModel);
  }

  ProfileModelCopyWith<ProfileModel, ProfileModel, ProfileModel> get copyWith =>
      _ProfileModelCopyWithImpl(this as ProfileModel, $identity, $identity);
  @override
  String toString() {
    return ProfileModelMapper.ensureInitialized()
        .stringifyValue(this as ProfileModel);
  }

  @override
  bool operator ==(Object other) {
    return ProfileModelMapper.ensureInitialized()
        .equalsValue(this as ProfileModel, other);
  }

  @override
  int get hashCode {
    return ProfileModelMapper.ensureInitialized()
        .hashValue(this as ProfileModel);
  }
}

extension ProfileModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProfileModel, $Out> {
  ProfileModelCopyWith<$R, ProfileModel, $Out> get $asProfileModel =>
      $base.as((v, t, t2) => _ProfileModelCopyWithImpl(v, t, t2));
}

abstract class ProfileModelCopyWith<$R, $In extends ProfileModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      int? userId,
      String? firstName,
      String? lastName,
      String? address,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? middleName});
  ProfileModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProfileModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProfileModel, $Out>
    implements ProfileModelCopyWith<$R, ProfileModel, $Out> {
  _ProfileModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProfileModel> $mapper =
      ProfileModelMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          int? userId,
          String? firstName,
          String? lastName,
          String? address,
          DateTime? createdAt,
          DateTime? updatedAt,
          Object? middleName = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (userId != null) #userId: userId,
        if (firstName != null) #firstName: firstName,
        if (lastName != null) #lastName: lastName,
        if (address != null) #address: address,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (middleName != $none) #middleName: middleName
      }));
  @override
  ProfileModel $make(CopyWithData data) => ProfileModel(
      id: data.get(#id, or: $value.id),
      userId: data.get(#userId, or: $value.userId),
      firstName: data.get(#firstName, or: $value.firstName),
      lastName: data.get(#lastName, or: $value.lastName),
      address: data.get(#address, or: $value.address),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      middleName: data.get(#middleName, or: $value.middleName));

  @override
  ProfileModelCopyWith<$R2, ProfileModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ProfileModelCopyWithImpl($value, $cast, t);
}
