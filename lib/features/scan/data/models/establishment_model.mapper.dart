// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'establishment_model.dart';

class EstablishmentModelMapper extends ClassMapperBase<EstablishmentModel> {
  EstablishmentModelMapper._();

  static EstablishmentModelMapper? _instance;
  static EstablishmentModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EstablishmentModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EstablishmentModel';

  static int _$id(EstablishmentModel v) => v.id;
  static const Field<EstablishmentModel, int> _f$id = Field('id', _$id);
  static String _$establishmentCode(EstablishmentModel v) =>
      v.establishmentCode;
  static const Field<EstablishmentModel, String> _f$establishmentCode =
      Field('establishmentCode', _$establishmentCode);
  static String _$firstName(EstablishmentModel v) => v.firstName;
  static const Field<EstablishmentModel, String> _f$firstName =
      Field('firstName', _$firstName);
  static String _$middleName(EstablishmentModel v) => v.middleName;
  static const Field<EstablishmentModel, String> _f$middleName =
      Field('middleName', _$middleName);
  static String _$lastName(EstablishmentModel v) => v.lastName;
  static const Field<EstablishmentModel, String> _f$lastName =
      Field('lastName', _$lastName);
  static String _$emailAddress(EstablishmentModel v) => v.emailAddress;
  static const Field<EstablishmentModel, String> _f$emailAddress =
      Field('emailAddress', _$emailAddress);
  static String _$contactNumber(EstablishmentModel v) => v.contactNumber;
  static const Field<EstablishmentModel, String> _f$contactNumber =
      Field('contactNumber', _$contactNumber);
  static String _$establishmentName(EstablishmentModel v) =>
      v.establishmentName;
  static const Field<EstablishmentModel, String> _f$establishmentName =
      Field('establishmentName', _$establishmentName);
  static String _$address(EstablishmentModel v) => v.address;
  static const Field<EstablishmentModel, String> _f$address =
      Field('address', _$address);
  static String _$baranggay(EstablishmentModel v) => v.baranggay;
  static const Field<EstablishmentModel, String> _f$baranggay =
      Field('baranggay', _$baranggay);
  static String _$city(EstablishmentModel v) => v.city;
  static const Field<EstablishmentModel, String> _f$city =
      Field('city', _$city);
  static String _$lng(EstablishmentModel v) => v.lng;
  static const Field<EstablishmentModel, String> _f$lng = Field('lng', _$lng);
  static String _$lat(EstablishmentModel v) => v.lat;
  static const Field<EstablishmentModel, String> _f$lat = Field('lat', _$lat);
  static String _$status(EstablishmentModel v) => v.status;
  static const Field<EstablishmentModel, String> _f$status =
      Field('status', _$status);
  static DateTime _$createdAt(EstablishmentModel v) => v.createdAt;
  static const Field<EstablishmentModel, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static DateTime _$updatedAt(EstablishmentModel v) => v.updatedAt;
  static const Field<EstablishmentModel, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);

  @override
  final MappableFields<EstablishmentModel> fields = const {
    #id: _f$id,
    #establishmentCode: _f$establishmentCode,
    #firstName: _f$firstName,
    #middleName: _f$middleName,
    #lastName: _f$lastName,
    #emailAddress: _f$emailAddress,
    #contactNumber: _f$contactNumber,
    #establishmentName: _f$establishmentName,
    #address: _f$address,
    #baranggay: _f$baranggay,
    #city: _f$city,
    #lng: _f$lng,
    #lat: _f$lat,
    #status: _f$status,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static EstablishmentModel _instantiate(DecodingData data) {
    return EstablishmentModel(
        id: data.dec(_f$id),
        establishmentCode: data.dec(_f$establishmentCode),
        firstName: data.dec(_f$firstName),
        middleName: data.dec(_f$middleName),
        lastName: data.dec(_f$lastName),
        emailAddress: data.dec(_f$emailAddress),
        contactNumber: data.dec(_f$contactNumber),
        establishmentName: data.dec(_f$establishmentName),
        address: data.dec(_f$address),
        baranggay: data.dec(_f$baranggay),
        city: data.dec(_f$city),
        lng: data.dec(_f$lng),
        lat: data.dec(_f$lat),
        status: data.dec(_f$status),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt));
  }

  @override
  final Function instantiate = _instantiate;

  static EstablishmentModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EstablishmentModel>(map);
  }

  static EstablishmentModel fromJson(String json) {
    return ensureInitialized().decodeJson<EstablishmentModel>(json);
  }
}

mixin EstablishmentModelMappable {
  String toJson() {
    return EstablishmentModelMapper.ensureInitialized()
        .encodeJson<EstablishmentModel>(this as EstablishmentModel);
  }

  Map<String, dynamic> toMap() {
    return EstablishmentModelMapper.ensureInitialized()
        .encodeMap<EstablishmentModel>(this as EstablishmentModel);
  }

  EstablishmentModelCopyWith<EstablishmentModel, EstablishmentModel,
          EstablishmentModel>
      get copyWith => _EstablishmentModelCopyWithImpl(
          this as EstablishmentModel, $identity, $identity);
  @override
  String toString() {
    return EstablishmentModelMapper.ensureInitialized()
        .stringifyValue(this as EstablishmentModel);
  }

  @override
  bool operator ==(Object other) {
    return EstablishmentModelMapper.ensureInitialized()
        .equalsValue(this as EstablishmentModel, other);
  }

  @override
  int get hashCode {
    return EstablishmentModelMapper.ensureInitialized()
        .hashValue(this as EstablishmentModel);
  }
}

extension EstablishmentModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EstablishmentModel, $Out> {
  EstablishmentModelCopyWith<$R, EstablishmentModel, $Out>
      get $asEstablishmentModel =>
          $base.as((v, t, t2) => _EstablishmentModelCopyWithImpl(v, t, t2));
}

abstract class EstablishmentModelCopyWith<$R, $In extends EstablishmentModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? id,
      String? establishmentCode,
      String? firstName,
      String? middleName,
      String? lastName,
      String? emailAddress,
      String? contactNumber,
      String? establishmentName,
      String? address,
      String? baranggay,
      String? city,
      String? lng,
      String? lat,
      String? status,
      DateTime? createdAt,
      DateTime? updatedAt});
  EstablishmentModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _EstablishmentModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EstablishmentModel, $Out>
    implements EstablishmentModelCopyWith<$R, EstablishmentModel, $Out> {
  _EstablishmentModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EstablishmentModel> $mapper =
      EstablishmentModelMapper.ensureInitialized();
  @override
  $R call(
          {int? id,
          String? establishmentCode,
          String? firstName,
          String? middleName,
          String? lastName,
          String? emailAddress,
          String? contactNumber,
          String? establishmentName,
          String? address,
          String? baranggay,
          String? city,
          String? lng,
          String? lat,
          String? status,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (establishmentCode != null) #establishmentCode: establishmentCode,
        if (firstName != null) #firstName: firstName,
        if (middleName != null) #middleName: middleName,
        if (lastName != null) #lastName: lastName,
        if (emailAddress != null) #emailAddress: emailAddress,
        if (contactNumber != null) #contactNumber: contactNumber,
        if (establishmentName != null) #establishmentName: establishmentName,
        if (address != null) #address: address,
        if (baranggay != null) #baranggay: baranggay,
        if (city != null) #city: city,
        if (lng != null) #lng: lng,
        if (lat != null) #lat: lat,
        if (status != null) #status: status,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt
      }));
  @override
  EstablishmentModel $make(CopyWithData data) => EstablishmentModel(
      id: data.get(#id, or: $value.id),
      establishmentCode:
          data.get(#establishmentCode, or: $value.establishmentCode),
      firstName: data.get(#firstName, or: $value.firstName),
      middleName: data.get(#middleName, or: $value.middleName),
      lastName: data.get(#lastName, or: $value.lastName),
      emailAddress: data.get(#emailAddress, or: $value.emailAddress),
      contactNumber: data.get(#contactNumber, or: $value.contactNumber),
      establishmentName:
          data.get(#establishmentName, or: $value.establishmentName),
      address: data.get(#address, or: $value.address),
      baranggay: data.get(#baranggay, or: $value.baranggay),
      city: data.get(#city, or: $value.city),
      lng: data.get(#lng, or: $value.lng),
      lat: data.get(#lat, or: $value.lat),
      status: data.get(#status, or: $value.status),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt));

  @override
  EstablishmentModelCopyWith<$R2, EstablishmentModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EstablishmentModelCopyWithImpl($value, $cast, t);
}
