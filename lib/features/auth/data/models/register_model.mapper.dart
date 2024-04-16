// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'register_model.dart';

class RegisterModelMapper extends ClassMapperBase<RegisterModel> {
  RegisterModelMapper._();

  static RegisterModelMapper? _instance;
  static RegisterModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegisterModelMapper._());
      UserModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RegisterModel';

  static String _$message(RegisterModel v) => v.message;
  static const Field<RegisterModel, String> _f$message =
      Field('message', _$message);
  static String _$token(RegisterModel v) => v.token;
  static const Field<RegisterModel, String> _f$token = Field('token', _$token);
  static UserModel _$user(RegisterModel v) => v.user;
  static const Field<RegisterModel, UserModel> _f$user = Field('user', _$user);

  @override
  final MappableFields<RegisterModel> fields = const {
    #message: _f$message,
    #token: _f$token,
    #user: _f$user,
  };

  static RegisterModel _instantiate(DecodingData data) {
    return RegisterModel(
        message: data.dec(_f$message),
        token: data.dec(_f$token),
        user: data.dec(_f$user));
  }

  @override
  final Function instantiate = _instantiate;

  static RegisterModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RegisterModel>(map);
  }

  static RegisterModel fromJson(String json) {
    return ensureInitialized().decodeJson<RegisterModel>(json);
  }
}

mixin RegisterModelMappable {
  String toJson() {
    return RegisterModelMapper.ensureInitialized()
        .encodeJson<RegisterModel>(this as RegisterModel);
  }

  Map<String, dynamic> toMap() {
    return RegisterModelMapper.ensureInitialized()
        .encodeMap<RegisterModel>(this as RegisterModel);
  }

  RegisterModelCopyWith<RegisterModel, RegisterModel, RegisterModel>
      get copyWith => _RegisterModelCopyWithImpl(
          this as RegisterModel, $identity, $identity);
  @override
  String toString() {
    return RegisterModelMapper.ensureInitialized()
        .stringifyValue(this as RegisterModel);
  }

  @override
  bool operator ==(Object other) {
    return RegisterModelMapper.ensureInitialized()
        .equalsValue(this as RegisterModel, other);
  }

  @override
  int get hashCode {
    return RegisterModelMapper.ensureInitialized()
        .hashValue(this as RegisterModel);
  }
}

extension RegisterModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RegisterModel, $Out> {
  RegisterModelCopyWith<$R, RegisterModel, $Out> get $asRegisterModel =>
      $base.as((v, t, t2) => _RegisterModelCopyWithImpl(v, t, t2));
}

abstract class RegisterModelCopyWith<$R, $In extends RegisterModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  UserModelCopyWith<$R, UserModel, UserModel> get user;
  $R call({String? message, String? token, UserModel? user});
  RegisterModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RegisterModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RegisterModel, $Out>
    implements RegisterModelCopyWith<$R, RegisterModel, $Out> {
  _RegisterModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RegisterModel> $mapper =
      RegisterModelMapper.ensureInitialized();
  @override
  UserModelCopyWith<$R, UserModel, UserModel> get user =>
      $value.user.copyWith.$chain((v) => call(user: v));
  @override
  $R call({String? message, String? token, UserModel? user}) =>
      $apply(FieldCopyWithData({
        if (message != null) #message: message,
        if (token != null) #token: token,
        if (user != null) #user: user
      }));
  @override
  RegisterModel $make(CopyWithData data) => RegisterModel(
      message: data.get(#message, or: $value.message),
      token: data.get(#token, or: $value.token),
      user: data.get(#user, or: $value.user));

  @override
  RegisterModelCopyWith<$R2, RegisterModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _RegisterModelCopyWithImpl($value, $cast, t);
}
