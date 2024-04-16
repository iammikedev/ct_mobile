import 'package:equatable/equatable.dart';

class LoginParamsEntity extends Equatable {
  const LoginParamsEntity({
    required this.email,
    required this.password,
    required this.deviceId,
  });

  final String email;
  final String password;
  final String deviceId;
  
  @override
  List<Object?> get props => [email, password, deviceId];
}
