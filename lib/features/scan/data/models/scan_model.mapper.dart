// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'scan_model.dart';

class ScanModelMapper extends ClassMapperBase<ScanModel> {
  ScanModelMapper._();

  static ScanModelMapper? _instance;
  static ScanModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ScanModelMapper._());
      EstablishmentModelMapper.ensureInitialized();
      UserModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ScanModel';

  static EstablishmentModel? _$establishment(ScanModel v) => v.establishment;
  static const Field<ScanModel, EstablishmentModel> _f$establishment =
      Field('establishment', _$establishment, opt: true);
  static UserModel? _$user(ScanModel v) => v.user;
  static const Field<ScanModel, UserModel> _f$user =
      Field('user', _$user, opt: true);

  @override
  final MappableFields<ScanModel> fields = const {
    #establishment: _f$establishment,
    #user: _f$user,
  };

  static ScanModel _instantiate(DecodingData data) {
    return ScanModel(
        establishment: data.dec(_f$establishment), user: data.dec(_f$user));
  }

  @override
  final Function instantiate = _instantiate;

  static ScanModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ScanModel>(map);
  }

  static ScanModel fromJson(String json) {
    return ensureInitialized().decodeJson<ScanModel>(json);
  }
}

mixin ScanModelMappable {
  String toJson() {
    return ScanModelMapper.ensureInitialized()
        .encodeJson<ScanModel>(this as ScanModel);
  }

  Map<String, dynamic> toMap() {
    return ScanModelMapper.ensureInitialized()
        .encodeMap<ScanModel>(this as ScanModel);
  }

  ScanModelCopyWith<ScanModel, ScanModel, ScanModel> get copyWith =>
      _ScanModelCopyWithImpl(this as ScanModel, $identity, $identity);
  @override
  String toString() {
    return ScanModelMapper.ensureInitialized()
        .stringifyValue(this as ScanModel);
  }

  @override
  bool operator ==(Object other) {
    return ScanModelMapper.ensureInitialized()
        .equalsValue(this as ScanModel, other);
  }

  @override
  int get hashCode {
    return ScanModelMapper.ensureInitialized().hashValue(this as ScanModel);
  }
}

extension ScanModelValueCopy<$R, $Out> on ObjectCopyWith<$R, ScanModel, $Out> {
  ScanModelCopyWith<$R, ScanModel, $Out> get $asScanModel =>
      $base.as((v, t, t2) => _ScanModelCopyWithImpl(v, t, t2));
}

abstract class ScanModelCopyWith<$R, $In extends ScanModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  EstablishmentModelCopyWith<$R, EstablishmentModel, EstablishmentModel>?
      get establishment;
  UserModelCopyWith<$R, UserModel, UserModel>? get user;
  $R call({EstablishmentModel? establishment, UserModel? user});
  ScanModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ScanModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ScanModel, $Out>
    implements ScanModelCopyWith<$R, ScanModel, $Out> {
  _ScanModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ScanModel> $mapper =
      ScanModelMapper.ensureInitialized();
  @override
  EstablishmentModelCopyWith<$R, EstablishmentModel, EstablishmentModel>?
      get establishment =>
          $value.establishment?.copyWith.$chain((v) => call(establishment: v));
  @override
  UserModelCopyWith<$R, UserModel, UserModel>? get user =>
      $value.user?.copyWith.$chain((v) => call(user: v));
  @override
  $R call({Object? establishment = $none, Object? user = $none}) =>
      $apply(FieldCopyWithData({
        if (establishment != $none) #establishment: establishment,
        if (user != $none) #user: user
      }));
  @override
  ScanModel $make(CopyWithData data) => ScanModel(
      establishment: data.get(#establishment, or: $value.establishment),
      user: data.get(#user, or: $value.user));

  @override
  ScanModelCopyWith<$R2, ScanModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ScanModelCopyWithImpl($value, $cast, t);
}
