import 'package:image_picker/image_picker.dart';

class ImagePickUtils {
  final ImagePicker picker = ImagePicker();

  Future<XFile?> cameraImage() async {
    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
    return photo;
  }

  Future<XFile?> galleryImage() async {
    final XFile? photo = await picker.pickImage(source: ImageSource.gallery);
    return photo;
  }
}
