import 'package:image_picker/image_picker.dart';

class ImageUploadManager {
  final ImagePicker _imagePicker = ImagePicker();

  Future<XFile?> fetchFromLibrary() async {
    
  }

  Future<XFile?> fetchFromCamera() async {
    final XFile? image =
        await _imagePicker.pickImage(source: ImageSource.camera);

    return image;
  }
}

