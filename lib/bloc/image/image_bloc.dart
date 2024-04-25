import 'package:bloc/bloc.dart';
import 'package:bloc_counter/bloc/image/image_event.dart';
import 'package:bloc_counter/bloc/image/image_state.dart';
import 'package:bloc_counter/utils/image_pick_utils.dart';
import 'package:image_picker/image_picker.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  final ImagePickUtils imagePickUtils;

  ImageBloc(this.imagePickUtils) : super(const ImageState()) {
    on<CameraImgPick>(cameraImagePick);
    on<GalleryImgPick>(galleryImagePick);
  }

  Future<void> cameraImagePick(
      CameraImgPick event, Emitter<ImageState> emit) async {
    XFile? file = await imagePickUtils.cameraImage();
    emit(state.copyWith(imgFile: file));
  }

  Future<void> galleryImagePick(
      GalleryImgPick event, Emitter<ImageState> emit) async {
    XFile? file = await imagePickUtils.galleryImage();
    emit(state.copyWith(imgFile: file));
  }
}
