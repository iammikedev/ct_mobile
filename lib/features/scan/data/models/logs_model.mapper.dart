// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'logs_model.dart';

class LogsModelMapper extends ClassMapperBase<LogsModel> {
  LogsModelMapper._();

  static LogsModelMapper? _instance;
  static LogsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LogsModelMapper._());
      EstablishmentModelMapper.ensureInitialized();
      UserModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LogsModel';

  static int _$id(LogsModel v) => v.id;
  static const Field<LogsModel, int> _f$id = Field('id', _$id);
  static DateTime _$createdAt(LogsModel v) => v.createdAt;
  static const Field<LogsModel, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static DateTime _$updatedAt(LogsModel v) => v.updatedAt;
  static const Field<LogsModel, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static EstablishmentModel? _$establishment(LogsModel v) => v.establishment;
  static const Field<LogsModel, EstablishmentModel> _f$establishment =
      Field('establishment', _$establishment, opt: true);
  static UserModel? _$user(LogsModel v) => v.user;
  static const Field<LogsModel, UserModel> _f$user =
      Field('user', _$user, opt: true);

  @override
  final MappableFields<LogsModel> fields = const {
    #id: _f$id,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #establishment: _f$establishment,
    #user: _f$user,
  };

  static LogsModel _instantiate(DecodingData data) {
    return LogsModel(
        id: data.dec(_f$id),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt),
        establishment: data.dec(_f$establishment),
        user: data.dec(_f$user));
  }

  @override
  final Function instantiate = _instantiate;

  static LogsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LogsModel>(map);
  }

  static LogsModel fromJson(String json) {
    return ensureInitialized().decodeJson<LogsModel>(json);
  }
}

mixin LogsModelMappable {
  String toJson() {
    return LogsModelMapper.ensureInitialized()
        .encodeJson<LogsModel>(this as LogsModel);
  }

  Map<String, dynamic> toMap() {
    return LogsModelMapper.ensureInitialized()
        .encodeMap<LogsModel>(this as LogsModel);
  }

  LogsModelCopyWith<LogsModel, LogsModel, LogsModel> get copyWith =>
      _LogsModelCopyWithImpl(this as LogsModel, $identity, $identity);
  @override
  String toString() {
    return LogsModelMapper.ensureInitialized()
        .stringifyValue(this as LogsModel);
  }

  @override
  bool operator ==(Object other) {
    return LogsModelMapper.ensureInitialized()
        .equalsValue(this as LogsModel, other);
  }

  @override
  int get hashCode {
    return LogsModelMapper.ensureInitialized().hashValue(this as LogsModel);
  }
}

extension LogsModelValueCopy<$R, $Out> on ObjectCopyWith<$R, LogsModel, $Out> {
  LogsModelCopyWith<$R, LogsModel, $Out> get $asLogsModel =>
      $base.as((v, t, t2) => _LogsModelCopyWithImpl(v, t, t2));
}

abstract class LogsModelCopyWith<$R, $In extends LogsModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  EstablishmentModelCopyWith<$R, EstablishmentModel, EstablishmentModel>?
      get establishment;
  UserModelCopyWith<$R, UserModel, UserModel>? get user;
  $R call(
      {int? id,
      DateTime? createdAt,
      DateTime? updatedAt,
      EstablishmentModel? establishment,
      UserModel? user});
  LogsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LogsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LogsModel, $Out>
    implements LogsModelCopyWith<$R, LogsModel, $Out> {
  _LogsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LogsModel> $mapper =
      LogsModelMapper.ensureInitialized();
  @override
  EstablishmentModelCopyWith<$R, EstablishmentModel, EstablishmentModel>?
      get establishment =>
          $value.establishment?.copyWith.$chain((v) => call(establishment: v));
  @override
  UserModelCopyWith<$R, UserModel, UserModel>? get user =>
      $value.user?.copyWith.$chain((v) => call(user: v));
  @override
  $R call(
          {int? id,
          DateTime? createdAt,
          DateTime? updatedAt,
          Object? establishment = $none,
          Object? user = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (establishment != $none) #establishment: establishment,
        if (user != $none) #user: user
      }));
  @override
  LogsModel $make(CopyWithData data) => LogsModel(
      id: data.get(#id, or: $value.id),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      establishment: data.get(#establishment, or: $value.establishment),
      user: data.get(#user, or: $value.user));

  @override
  LogsModelCopyWith<$R2, LogsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LogsModelCopyWithImpl($value, $cast, t);
}
