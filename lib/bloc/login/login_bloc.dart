import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bloc_counter/bloc/login/login_event.dart';
import 'package:bloc_counter/bloc/login/login_state.dart';
import 'package:bloc_counter/utils/enum.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<EmailValidation>(_emailValidation);
    on<PasswordValidation>(_passwordValidation);
    on<ApiCall>(_apiCall);
  }

  void _emailValidation(EmailValidation event, Emitter<LoginState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _passwordValidation(PasswordValidation event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _apiCall(ApiCall event, Emitter<LoginState> emit) async {
    emit(state.copyWith(userState: UserState.loading));
    getHeaders() {
      return {
        'Accept': 'application/json',
      };
    }

    const String url = "https://reqres.in/api/login";
    try {
      final formData = {
        'email': state.email,
        'password': state.password,
      };
      final response = await http.post(Uri.parse(url),
          body: formData, headers: getHeaders());
      print("Response status code: ${response.statusCode}");
      if (response.statusCode == 200) {
        emit(state.copyWith(userState: UserState.loaded));
        Map<String, dynamic> jsonData = jsonDecode(response.body.toString());
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', jsonData['token']);
        print(response.body.toString());
        print("token ${prefs.get('token')}");
      }
    } catch (error) {
      emit(state.copyWith(userState: UserState.error));
      print("Error: $error");
    }
  }
}
