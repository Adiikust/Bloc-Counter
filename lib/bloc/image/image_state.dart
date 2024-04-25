import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class ImageState extends Equatable {
  final XFile? file;

  const ImageState({this.file});

  ImageState copyWith({XFile? imgFile}) {
    return ImageState(file: imgFile ?? file);
  }

  @override
  List<Object?> get props => [file];
}
