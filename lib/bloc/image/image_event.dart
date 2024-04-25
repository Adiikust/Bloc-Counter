import 'package:equatable/equatable.dart';

abstract class ImageEvent extends Equatable {
  const ImageEvent();
  @override
  List<Object?> get props => [];
}

class CameraImgPick extends ImageEvent {}

class GalleryImgPick extends ImageEvent {}
