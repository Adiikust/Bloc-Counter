import 'package:bloc_counter/bloc/comment/comment_bloc.dart';
import 'package:bloc_counter/bloc/comment/comment_event.dart';
import 'package:bloc_counter/bloc/comment/comment_state.dart';
import 'package:bloc_counter/utils/enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentView extends StatefulWidget {
  const CommentView({super.key});

  @override
  State<CommentView> createState() => _CommentViewState();
}

class _CommentViewState extends State<CommentView> {
  @override
  void initState() {
    context.read<CommentBloc>().add(GetCommentApi());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comment Api', style: TextStyle(color: Colors.white)),
      ),
      body: BlocBuilder<CommentBloc, CommentState>(
        builder: (context, state) {
          switch (state.userState) {
            case UserState.loading:
              return const Center(
                  child: CupertinoActivityIndicator(radius: 16));
            case UserState.loaded:
              return ListView.builder(
                itemCount: state.getCommentApiModel.length,
                itemBuilder: (context, index) {
                  final data = state.getCommentApiModel[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(data.id.toString()),
                      ),
                      title: Text(
                        data.email.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(data.body.toString()),
                    ),
                  );
                },
              );
            case UserState.error:
              return const Text(
                "Server Error",
                style: TextStyle(fontSize: 20),
              );
          }
        },
      ),
    );
  }
}
