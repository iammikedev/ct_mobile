// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'login_model.dart';

class LoginModelMapper extends ClassMapperBase<LoginModel> {
  LoginModelMapper._();

  static LoginModelMapper? _instance;
  static LoginModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoginModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LoginModel';

  static String _$message(LoginModel v) => v.message;
  static const Field<LoginModel, String> _f$message =
      Field('message', _$message);
  static String _$token(LoginModel v) => v.token;
  static const Field<LoginModel, String> _f$token = Field('token', _$token);

  @override
  final MappableFields<LoginModel> fields = const {
    #message: _f$message,
    #token: _f$token,
  };

  static LoginModel _instantiate(DecodingData data) {
    return LoginModel(message: data.dec(_f$message), token: data.dec(_f$token));
  }

  @override
  final Function instantiate = _instantiate;

  static LoginModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoginModel>(map);
  }

  static LoginModel fromJson(String json) {
    return ensureInitialized().decodeJson<LoginModel>(json);
  }
}

mixin LoginModelMappable {
  String toJson() {
    return LoginModelMapper.ensureInitialized()
        .encodeJson<LoginModel>(this as LoginModel);
  }

  Map<String, dynamic> toMap() {
    return LoginModelMapper.ensureInitialized()
        .encodeMap<LoginModel>(this as LoginModel);
  }

  LoginModelCopyWith<LoginModel, LoginModel, LoginModel> get copyWith =>
      _LoginModelCopyWithImpl(this as LoginModel, $identity, $identity);
  @override
  String toString() {
    return LoginModelMapper.ensureInitialized()
        .stringifyValue(this as LoginModel);
  }

  @override
  bool operator ==(Object other) {
    return LoginModelMapper.ensureInitialized()
        .equalsValue(this as LoginModel, other);
  }

  @override
  int get hashCode {
    return LoginModelMapper.ensureInitialized().hashValue(this as LoginModel);
  }
}

extension LoginModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LoginModel, $Out> {
  LoginModelCopyWith<$R, LoginModel, $Out> get $asLoginModel =>
      $base.as((v, t, t2) => _LoginModelCopyWithImpl(v, t, t2));
}

abstract class LoginModelCopyWith<$R, $In extends LoginModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? message, String? token});
  LoginModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LoginModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoginModel, $Out>
    implements LoginModelCopyWith<$R, LoginModel, $Out> {
  _LoginModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoginModel> $mapper =
      LoginModelMapper.ensureInitialized();
  @override
  $R call({String? message, String? token}) => $apply(FieldCopyWithData({
        if (message != null) #message: message,
        if (token != null) #token: token
      }));
  @override
  LoginModel $make(CopyWithData data) => LoginModel(
      message: data.get(#message, or: $value.message),
      token: data.get(#token, or: $value.token));

  @override
  LoginModelCopyWith<$R2, LoginModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LoginModelCopyWithImpl($value, $cast, t);
}
