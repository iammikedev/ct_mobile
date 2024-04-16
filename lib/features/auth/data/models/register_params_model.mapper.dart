// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'register_params_model.dart';

class RegisterParamsModelMapper extends ClassMapperBase<RegisterParamsModel> {
  RegisterParamsModelMapper._();

  static RegisterParamsModelMapper? _instance;
  static RegisterParamsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegisterParamsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RegisterParamsModel';

  static String _$firstName(RegisterParamsModel v) => v.firstName;
  static const Field<RegisterParamsModel, String> _f$firstName =
      Field('firstName', _$firstName, key: 'first_name');
  static String _$lastName(RegisterParamsModel v) => v.lastName;
  static const Field<RegisterParamsModel, String> _f$lastName =
      Field('lastName', _$lastName, key: 'last_name');
  static String _$email(RegisterParamsModel v) => v.email;
  static const Field<RegisterParamsModel, String> _f$email =
      Field('email', _$email);
  static String _$password(RegisterParamsModel v) => v.password;
  static const Field<RegisterParamsModel, String> _f$password =
      Field('password', _$password);
  static String _$passwordConfirmation(RegisterParamsModel v) =>
      v.passwordConfirmation;
  static const Field<RegisterParamsModel, String> _f$passwordConfirmation =
      Field('passwordConfirmation', _$passwordConfirmation,
          key: 'password_confirmation');
  static String _$address(RegisterParamsModel v) => v.address;
  static const Field<RegisterParamsModel, String> _f$address =
      Field('address', _$address);
  static String _$deviceId(RegisterParamsModel v) => v.deviceId;
  static const Field<RegisterParamsModel, String> _f$deviceId =
      Field('deviceId', _$deviceId, key: 'device_id');

  @override
  final MappableFields<RegisterParamsModel> fields = const {
    #firstName: _f$firstName,
    #lastName: _f$lastName,
    #email: _f$email,
    #password: _f$password,
    #passwordConfirmation: _f$passwordConfirmation,
    #address: _f$address,
    #deviceId: _f$deviceId,
  };

  static RegisterParamsModel _instantiate(DecodingData data) {
    return RegisterParamsModel(
        firstName: data.dec(_f$firstName),
        lastName: data.dec(_f$lastName),
        email: data.dec(_f$email),
        password: data.dec(_f$password),
        passwordConfirmation: data.dec(_f$passwordConfirmation),
        address: data.dec(_f$address),
        deviceId: data.dec(_f$deviceId));
  }

  @override
  final Function instantiate = _instantiate;

  static RegisterParamsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RegisterParamsModel>(map);
  }

  static RegisterParamsModel fromJson(String json) {
    return ensureInitialized().decodeJson<RegisterParamsModel>(json);
  }
}

mixin RegisterParamsModelMappable {
  String toJson() {
    return RegisterParamsModelMapper.ensureInitialized()
        .encodeJson<RegisterParamsModel>(this as RegisterParamsModel);
  }

  Map<String, dynamic> toMap() {
    return RegisterParamsModelMapper.ensureInitialized()
        .encodeMap<RegisterParamsModel>(this as RegisterParamsModel);
  }

  RegisterParamsModelCopyWith<RegisterParamsModel, RegisterParamsModel,
          RegisterParamsModel>
      get copyWith => _RegisterParamsModelCopyWithImpl(
          this as RegisterParamsModel, $identity, $identity);
  @override
  String toString() {
    return RegisterParamsModelMapper.ensureInitialized()
        .stringifyValue(this as RegisterParamsModel);
  }

  @override
  bool operator ==(Object other) {
    return RegisterParamsModelMapper.ensureInitialized()
        .equalsValue(this as RegisterParamsModel, other);
  }

  @override
  int get hashCode {
    return RegisterParamsModelMapper.ensureInitialized()
        .hashValue(this as RegisterParamsModel);
  }
}

extension RegisterParamsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RegisterParamsModel, $Out> {
  RegisterParamsModelCopyWith<$R, RegisterParamsModel, $Out>
      get $asRegisterParamsModel =>
          $base.as((v, t, t2) => _RegisterParamsModelCopyWithImpl(v, t, t2));
}

abstract class RegisterParamsModelCopyWith<$R, $In extends RegisterParamsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? firstName,
      String? lastName,
      String? email,
      String? password,
      String? passwordConfirmation,
      String? address,
      String? deviceId});
  RegisterParamsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RegisterParamsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RegisterParamsModel, $Out>
    implements RegisterParamsModelCopyWith<$R, RegisterParamsModel, $Out> {
  _RegisterParamsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RegisterParamsModel> $mapper =
      RegisterParamsModelMapper.ensureInitialized();
  @override
  $R call(
          {String? firstName,
          String? lastName,
          String? email,
          String? password,
          String? passwordConfirmation,
          String? address,
          String? deviceId}) =>
      $apply(FieldCopyWithData({
        if (firstName != null) #firstName: firstName,
        if (lastName != null) #lastName: lastName,
        if (email != null) #email: email,
        if (password != null) #password: password,
        if (passwordConfirmation != null)
          #passwordConfirmation: passwordConfirmation,
        if (address != null) #address: address,
        if (deviceId != null) #deviceId: deviceId
      }));
  @override
  RegisterParamsModel $make(CopyWithData data) => RegisterParamsModel(
      firstName: data.get(#firstName, or: $value.firstName),
      lastName: data.get(#lastName, or: $value.lastName),
      email: data.get(#email, or: $value.email),
      password: data.get(#password, or: $value.password),
      passwordConfirmation:
          data.get(#passwordConfirmation, or: $value.passwordConfirmation),
      address: data.get(#address, or: $value.address),
      deviceId: data.get(#deviceId, or: $value.deviceId));

  @override
  RegisterParamsModelCopyWith<$R2, RegisterParamsModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _RegisterParamsModelCopyWithImpl($value, $cast, t);
}
