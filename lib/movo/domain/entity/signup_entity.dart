import 'package:equatable/equatable.dart';

class AuthEntity extends Equatable {
  const AuthEntity({
    required this.expireDate,
    required this.state,
    required this.token,
  });

  final bool state;
  final String expireDate, token;

  @override
  List<Object?> get props => [state, token, expireDate];
}
