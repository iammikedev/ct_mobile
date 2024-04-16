// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'login_params_model.dart';

class LoginParamsModelMapper extends ClassMapperBase<LoginParamsModel> {
  LoginParamsModelMapper._();

  static LoginParamsModelMapper? _instance;
  static LoginParamsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoginParamsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LoginParamsModel';

  static String _$email(LoginParamsModel v) => v.email;
  static const Field<LoginParamsModel, String> _f$email =
      Field('email', _$email);
  static String _$password(LoginParamsModel v) => v.password;
  static const Field<LoginParamsModel, String> _f$password =
      Field('password', _$password);
  static String _$deviceId(LoginParamsModel v) => v.deviceId;
  static const Field<LoginParamsModel, String> _f$deviceId =
      Field('deviceId', _$deviceId, key: 'device_id');

  @override
  final MappableFields<LoginParamsModel> fields = const {
    #email: _f$email,
    #password: _f$password,
    #deviceId: _f$deviceId,
  };

  static LoginParamsModel _instantiate(DecodingData data) {
    return LoginParamsModel(
        email: data.dec(_f$email),
        password: data.dec(_f$password),
        deviceId: data.dec(_f$deviceId));
  }

  @override
  final Function instantiate = _instantiate;

  static LoginParamsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoginParamsModel>(map);
  }

  static LoginParamsModel fromJson(String json) {
    return ensureInitialized().decodeJson<LoginParamsModel>(json);
  }
}

mixin LoginParamsModelMappable {
  String toJson() {
    return LoginParamsModelMapper.ensureInitialized()
        .encodeJson<LoginParamsModel>(this as LoginParamsModel);
  }

  Map<String, dynamic> toMap() {
    return LoginParamsModelMapper.ensureInitialized()
        .encodeMap<LoginParamsModel>(this as LoginParamsModel);
  }

  LoginParamsModelCopyWith<LoginParamsModel, LoginParamsModel, LoginParamsModel>
      get copyWith => _LoginParamsModelCopyWithImpl(
          this as LoginParamsModel, $identity, $identity);
  @override
  String toString() {
    return LoginParamsModelMapper.ensureInitialized()
        .stringifyValue(this as LoginParamsModel);
  }

  @override
  bool operator ==(Object other) {
    return LoginParamsModelMapper.ensureInitialized()
        .equalsValue(this as LoginParamsModel, other);
  }

  @override
  int get hashCode {
    return LoginParamsModelMapper.ensureInitialized()
        .hashValue(this as LoginParamsModel);
  }
}

extension LoginParamsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoginParamsModel, $Out> {
  LoginParamsModelCopyWith<$R, LoginParamsModel, $Out>
      get $asLoginParamsModel =>
          $base.as((v, t, t2) => _LoginParamsModelCopyWithImpl(v, t, t2));
}

abstract class LoginParamsModelCopyWith<$R, $In extends LoginParamsModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? email, String? password, String? deviceId});
  LoginParamsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LoginParamsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoginParamsModel, $Out>
    implements LoginParamsModelCopyWith<$R, LoginParamsModel, $Out> {
  _LoginParamsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoginParamsModel> $mapper =
      LoginParamsModelMapper.ensureInitialized();
  @override
  $R call({String? email, String? password, String? deviceId}) =>
      $apply(FieldCopyWithData({
        if (email != null) #email: email,
        if (password != null) #password: password,
        if (deviceId != null) #deviceId: deviceId
      }));
  @override
  LoginParamsModel $make(CopyWithData data) => LoginParamsModel(
      email: data.get(#email, or: $value.email),
      password: data.get(#password, or: $value.password),
      deviceId: data.get(#deviceId, or: $value.deviceId));

  @override
  LoginParamsModelCopyWith<$R2, LoginParamsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LoginParamsModelCopyWithImpl($value, $cast, t);
}
