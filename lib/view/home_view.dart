import 'package:bloc_counter/bloc/counter/counter_bloc.dart';
import 'package:bloc_counter/bloc/counter/counter_event.dart';
import 'package:bloc_counter/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Bloc Counter', style: TextStyle(color: Colors.white)),
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
              ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(Increment());
                },
                child: const Text('+', style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(width: 50),
              BlocBuilder<CounterBloc, CounterState>(
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
    );
  }
}
