import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'data/local_data_source_handler/handler.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kam Point',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TestFunctionality(),
    );
  }
}

class TestFunctionality extends StatelessWidget {
  const TestFunctionality({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            String? imagePath;
            imagePath = await getImage();
            if (imagePath != null) {
              var points = await getPoints(imagePath);
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Text(points.toString()),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            }
          },
          child: const Text('GET POINTS'),
        ),
      ),
    );
  }
}

Future<String?> getImage() async {
  // ignore: invalid_use_of_visible_for_testing_member
  XFile? pickedImage = await ImagePicker.platform.getImage(
    source: ImageSource.camera,
    preferredCameraDevice: CameraDevice.rear,
  );
  if (pickedImage == null) return null;

  return pickedImage.path;
}
