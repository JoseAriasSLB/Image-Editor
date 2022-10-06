import 'package:flutter/material.dart';
import 'package:image_editor_tutorial/screens/edit_image_screen.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Ink(
        decoration: const ShapeDecoration(
          color: Colors.lightBlue,
          shape: CircleBorder(),
        ),
        child: IconButton(
          tooltip: "Select image",
          icon: const Icon(
            Icons.flip_camera_ios,
          ),
          onPressed: () async {
            XFile? file = await ImagePicker().pickImage(
              source: ImageSource.camera,
            );
            if (file != null) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => EditImageScreen(
                    selectedImage: file.path,
                  ),
                ),
              );
            }
          },
        ),
      )),
    );
  }
}
