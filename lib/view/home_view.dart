import 'package:bloc_counter/bloc/counter/counter_bloc.dart';
import 'package:bloc_counter/bloc/counter/counter_event.dart';
import 'package:bloc_counter/bloc/counter/counter_state.dart';
import 'package:bloc_counter/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  /// LOCAL BLOC STRUCTURE
  late CounterBloc _counterBloc;

  @override
  void initState() {
    _counterBloc = CounterBloc();
    super.initState();
  }

  @override
  void dispose() {
    _counterBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _counterBloc,
      child: Scaffold(
        appBar: AppBar(
          title:
              const Text('Bloc Counter', style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
                onPressed: () async {
                  final SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.clear();
                  prefs.remove('token');
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => const LoginView()));
                },
                icon: const Icon(
                  Icons.logout_outlined,
                  color: Colors.white,
                )),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(state.counter.toString(),
                    style: const TextStyle(fontSize: 30));
              },
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<CounterBloc, CounterState>(
                  buildWhen: (previous, current) => false,
                  builder: (context, state) {
                    print("build");
                    return ElevatedButton(
                      onPressed: () =>
                          context.read<CounterBloc>().add(Increment()),
                      child: const Text('+', style: TextStyle(fontSize: 20)),
                    );
                  },
                ),
                const SizedBox(width: 50),
                BlocBuilder<CounterBloc, CounterState>(
                  buildWhen: (previous, current) => true,
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        if (state.counter == 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('NO DECREMENT'),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        } else {
                          context.read<CounterBloc>().add(Decrement());
                        }
                      },
                      child: const Text('-', style: TextStyle(fontSize: 20)),
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
