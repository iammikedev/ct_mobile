import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  const LoginEntity({
    required this.message,
    required this.token,
  });

  final String message;
  final String token;

  @override
  List<Object?> get props => [message, token];
}
