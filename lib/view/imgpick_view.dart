import 'dart:io';
import 'package:bloc_counter/bloc/image/image_bloc.dart';
import 'package:bloc_counter/bloc/image/image_event.dart';
import 'package:bloc_counter/bloc/image/image_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImgPickView extends StatelessWidget {
  const ImgPickView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Img Pick', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<ImageBloc, ImageState>(
            builder: (context, state) {
              // print("Image ${state.file?.path.split("/").last}");
              return state.file == null
                  ? const SizedBox.shrink()
                  : Image.file(File(state.file?.path ?? ""));
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  context.read<ImageBloc>().add(CameraImgPick());
                },
                icon: const Icon(
                  Icons.camera_alt_rounded,
                  size: 50,
                ),
              ),
              const SizedBox(width: 50),
              IconButton(
                onPressed: () {
                  context.read<ImageBloc>().add(GalleryImgPick());
                },
                icon: const Icon(
                  Icons.image,
                  size: 50,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
