import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UploadProfilePictureController extends GetxController {
  XFile? pickedImage;
  getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      pickedImage = XFile(pickedFile.path);
    }
  }

  getFromCamera() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      pickedImage = XFile(pickedFile.path);
    }
  }
}
