// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'logs_params_model.dart';

class LogsParamsModelMapper extends ClassMapperBase<LogsParamsModel> {
  LogsParamsModelMapper._();

  static LogsParamsModelMapper? _instance;
  static LogsParamsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LogsParamsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LogsParamsModel';

  static int _$limit(LogsParamsModel v) => v.limit;
  static const Field<LogsParamsModel, int> _f$limit =
      Field('limit', _$limit, opt: true, def: 10);
  static int _$page(LogsParamsModel v) => v.page;
  static const Field<LogsParamsModel, int> _f$page =
      Field('page', _$page, opt: true, def: 1);
  static LogTypeEnum _$type(LogsParamsModel v) => v.type;
  static const Field<LogsParamsModel, LogTypeEnum> _f$type =
      Field('type', _$type, opt: true, def: LogTypeEnum.USER);

  @override
  final MappableFields<LogsParamsModel> fields = const {
    #limit: _f$limit,
    #page: _f$page,
    #type: _f$type,
  };

  static LogsParamsModel _instantiate(DecodingData data) {
    return LogsParamsModel(
        limit: data.dec(_f$limit),
        page: data.dec(_f$page),
        type: data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static LogsParamsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LogsParamsModel>(map);
  }

  static LogsParamsModel fromJson(String json) {
    return ensureInitialized().decodeJson<LogsParamsModel>(json);
  }
}

mixin LogsParamsModelMappable {
  String toJson() {
    return LogsParamsModelMapper.ensureInitialized()
        .encodeJson<LogsParamsModel>(this as LogsParamsModel);
  }

  Map<String, dynamic> toMap() {
    return LogsParamsModelMapper.ensureInitialized()
        .encodeMap<LogsParamsModel>(this as LogsParamsModel);
  }

  LogsParamsModelCopyWith<LogsParamsModel, LogsParamsModel, LogsParamsModel>
      get copyWith => _LogsParamsModelCopyWithImpl(
          this as LogsParamsModel, $identity, $identity);
  @override
  String toString() {
    return LogsParamsModelMapper.ensureInitialized()
        .stringifyValue(this as LogsParamsModel);
  }

  @override
  bool operator ==(Object other) {
    return LogsParamsModelMapper.ensureInitialized()
        .equalsValue(this as LogsParamsModel, other);
  }

  @override
  int get hashCode {
    return LogsParamsModelMapper.ensureInitialized()
        .hashValue(this as LogsParamsModel);
  }
}

extension LogsParamsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LogsParamsModel, $Out> {
  LogsParamsModelCopyWith<$R, LogsParamsModel, $Out> get $asLogsParamsModel =>
      $base.as((v, t, t2) => _LogsParamsModelCopyWithImpl(v, t, t2));
}

abstract class LogsParamsModelCopyWith<$R, $In extends LogsParamsModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? limit, int? page, LogTypeEnum? type});
  LogsParamsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LogsParamsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LogsParamsModel, $Out>
    implements LogsParamsModelCopyWith<$R, LogsParamsModel, $Out> {
  _LogsParamsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LogsParamsModel> $mapper =
      LogsParamsModelMapper.ensureInitialized();
  @override
  $R call({int? limit, int? page, LogTypeEnum? type}) =>
      $apply(FieldCopyWithData({
        if (limit != null) #limit: limit,
        if (page != null) #page: page,
        if (type != null) #type: type
      }));
  @override
  LogsParamsModel $make(CopyWithData data) => LogsParamsModel(
      limit: data.get(#limit, or: $value.limit),
      page: data.get(#page, or: $value.page),
      type: data.get(#type, or: $value.type));

  @override
  LogsParamsModelCopyWith<$R2, LogsParamsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LogsParamsModelCopyWithImpl($value, $cast, t);
}
