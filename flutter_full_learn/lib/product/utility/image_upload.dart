import 'package:image_picker/image_picker.dart';

class ImageUploadManager{
  final ImagePicker _imagePicker = ImagePicker();

  Future<XFile?> fetchFromLibrary() async{
    final XFile? image = await _imagePicker.pickImage(source: ImageSource.gallery);

    return image;
  }
}