import 'package:bloc_counter/utils/enum.dart';
import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final String email;
  final String password;
  final UserState userState;

  const LoginState({
    this.email = "",
    this.userState = UserState.loading,
    this.password = "",
  });

  LoginState copyWith({String? email, String? password, UserState? userState}) {
    return LoginState(
      userState: userState ?? this.userState,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<Object?> get props => [email, password, userState];
}
