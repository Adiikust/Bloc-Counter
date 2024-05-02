import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class EmailValidation extends LoginEvent {
  final String email;
  EmailValidation({required this.email});
  @override
  // TODO: implement props
  List<Object?> get props => [email];
}

class PasswordValidation extends LoginEvent {
  final String password;
  PasswordValidation({required this.password});
  @override
  // TODO: implement props
  List<Object?> get props => [password];
}

class ApiCall extends LoginEvent {}
