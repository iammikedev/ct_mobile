// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'logout_model.dart';

class LogoutModelMapper extends ClassMapperBase<LogoutModel> {
  LogoutModelMapper._();

  static LogoutModelMapper? _instance;
  static LogoutModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LogoutModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LogoutModel';

  static String _$message(LogoutModel v) => v.message;
  static const Field<LogoutModel, String> _f$message =
      Field('message', _$message);

  @override
  final MappableFields<LogoutModel> fields = const {
    #message: _f$message,
  };

  static LogoutModel _instantiate(DecodingData data) {
    return LogoutModel(message: data.dec(_f$message));
  }

  @override
  final Function instantiate = _instantiate;

  static LogoutModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LogoutModel>(map);
  }

  static LogoutModel fromJson(String json) {
    return ensureInitialized().decodeJson<LogoutModel>(json);
  }
}

mixin LogoutModelMappable {
  String toJson() {
    return LogoutModelMapper.ensureInitialized()
        .encodeJson<LogoutModel>(this as LogoutModel);
  }

  Map<String, dynamic> toMap() {
    return LogoutModelMapper.ensureInitialized()
        .encodeMap<LogoutModel>(this as LogoutModel);
  }

  LogoutModelCopyWith<LogoutModel, LogoutModel, LogoutModel> get copyWith =>
      _LogoutModelCopyWithImpl(this as LogoutModel, $identity, $identity);
  @override
  String toString() {
    return LogoutModelMapper.ensureInitialized()
        .stringifyValue(this as LogoutModel);
  }

  @override
  bool operator ==(Object other) {
    return LogoutModelMapper.ensureInitialized()
        .equalsValue(this as LogoutModel, other);
  }

  @override
  int get hashCode {
    return LogoutModelMapper.ensureInitialized().hashValue(this as LogoutModel);
  }
}

extension LogoutModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LogoutModel, $Out> {
  LogoutModelCopyWith<$R, LogoutModel, $Out> get $asLogoutModel =>
      $base.as((v, t, t2) => _LogoutModelCopyWithImpl(v, t, t2));
}

abstract class LogoutModelCopyWith<$R, $In extends LogoutModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? message});
  LogoutModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LogoutModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LogoutModel, $Out>
    implements LogoutModelCopyWith<$R, LogoutModel, $Out> {
  _LogoutModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LogoutModel> $mapper =
      LogoutModelMapper.ensureInitialized();
  @override
  $R call({String? message}) =>
      $apply(FieldCopyWithData({if (message != null) #message: message}));
  @override
  LogoutModel $make(CopyWithData data) =>
      LogoutModel(message: data.get(#message, or: $value.message));

  @override
  LogoutModelCopyWith<$R2, LogoutModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LogoutModelCopyWithImpl($value, $cast, t);
}
