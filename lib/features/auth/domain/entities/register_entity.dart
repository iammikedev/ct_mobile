import 'package:equatable/equatable.dart';
import 'package:scanner/features/auth/auth.dart';

class RegisterEntity extends Equatable {
  const RegisterEntity({
    required this.message,
    required this.token,
    required this.user,
  });

  final String message;
  final String token;
  final UserEntity user;

  @override
  List<Object?> get props => [message, token, user];
}
