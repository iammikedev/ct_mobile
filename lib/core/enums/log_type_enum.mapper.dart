// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'log_type_enum.dart';

class LogTypeEnumMapper extends EnumMapper<LogTypeEnum> {
  LogTypeEnumMapper._();

  static LogTypeEnumMapper? _instance;
  static LogTypeEnumMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LogTypeEnumMapper._());
    }
    return _instance!;
  }

  static LogTypeEnum fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  LogTypeEnum decode(dynamic value) {
    switch (value) {
      case 'EST':
        return LogTypeEnum.EST;
      case 'USER':
        return LogTypeEnum.USER;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(LogTypeEnum self) {
    switch (self) {
      case LogTypeEnum.EST:
        return 'EST';
      case LogTypeEnum.USER:
        return 'USER';
    }
  }
}

extension LogTypeEnumMapperExtension on LogTypeEnum {
  String toValue() {
    LogTypeEnumMapper.ensureInitialized();
    return MapperContainer.globals.toValue<LogTypeEnum>(this) as String;
  }
}
