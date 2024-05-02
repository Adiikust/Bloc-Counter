import 'package:bloc_counter/bloc/login/login_bloc.dart';
import 'package:bloc_counter/bloc/login/login_event.dart';
import 'package:bloc_counter/bloc/login/login_state.dart';
import 'package:bloc_counter/utils/enum.dart';
import 'package:bloc_counter/view/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  late LoginBloc _loginBloc;
  @override
  void initState() {
    super.initState();
    _loginBloc = LoginBloc();
  }

  @override
  void dispose() {
    _emailTextController.clear();
    _passwordTextController.clear();
    _loginBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Login Screen")),
        body: BlocProvider(
          create: (context) => _loginBloc,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlocBuilder<LoginBloc, LoginState>(
                  buildWhen: (previous, current) =>
                      previous.email != current.email,
                  builder: (context, state) {
                    return TextFormField(
                      controller: _emailTextController,
                      decoration: const InputDecoration(
                          hintText: "Email", border: OutlineInputBorder()),
                      onChanged: (value) => context
                          .read<LoginBloc>()
                          .add(EmailValidation(email: value)),
                    );
                  },
                ),
                const SizedBox(height: 10),
                BlocBuilder<LoginBloc, LoginState>(
                  buildWhen: (previous, current) =>
                      previous.password != current.password,
                  builder: (context, state) {
                    return TextFormField(
                      controller: _passwordTextController,
                      decoration: const InputDecoration(
                          hintText: "Password", border: OutlineInputBorder()),
                      onChanged: (value) => context
                          .read<LoginBloc>()
                          .add(PasswordValidation(password: value)),
                    );
                  },
                ),
                const SizedBox(height: 20),
                BlocListener<LoginBloc, LoginState>(
                  listener: (context, state) {
                    if (state.userState == UserState.loading) {
                      const CupertinoActivityIndicator(
                        color: Colors.blue,
                        radius: 30,
                      );
                    }
                    if (state.userState == UserState.loaded) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Successfully login'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => const HomeView()));
                    }
                    if (state.userState == UserState.error) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Try Again'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                  },
                  child: BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return ElevatedButton(
                          onPressed: () {
                            context.read<LoginBloc>().add(ApiCall());
                          },
                          child: const SizedBox(
                              height: 50,
                              width: 100,
                              child: Center(child: Text("Login"))));
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
