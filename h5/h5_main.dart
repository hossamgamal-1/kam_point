// import 'dart:io';

// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:opencv_4/factory/pathfrom.dart';
// import 'package:opencv_4/opencv_4.dart';
// import 'package:path_provider/path_provider.dart';


/* 
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
            imagePath = await getImagePath();
            if (imagePath != null) {
              File newImage = await getPoints(imagePath);
              // ignore: use_build_context_synchronously
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: FileImage(newImage),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  actions: [
                    // Text(points.toString()),
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

Future<String?> getImagePath() async =>
    (await ImagePicker().pickImage(source: ImageSource.gallery))?.path;

Future<File> getPoints(String imagePath) async {
  //Creeting a file with a custom directory to save in it
  final Directory tempDir = await getTemporaryDirectory();
  File file =
      await File('${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg')
          .create();

  Uint8List firstEffect = (await Cv2.cvtColor(
    pathFrom: CVPathFrom.GALLERY_CAMERA,
    pathString: imagePath,
    outputType: Cv2.COLOR_BGR2GRAY,
  ))!;
  file.writeAsBytesSync(firstEffect);

  Uint8List secondEffect = (await Cv2.gaussianBlur(
      pathFrom: CVPathFrom.GALLERY_CAMERA,
      pathString: file.path,
      kernelSize: [5, 5],
      sigmaX: Cv2.BORDER_CONSTANT.toDouble()))!;
  file.writeAsBytesSync(secondEffect);

  Uint8List thirdEffect = await Cv2.threshold(
      pathFrom: CVPathFrom.GALLERY_CAMERA,
      pathString: file.path,
      thresholdValue: 135,
      maxThresholdValue: 255,
      thresholdType: Cv2.THRESH_BINARY);
  file.writeAsBytesSync(thirdEffect);

  Uint8List fourthEffect = (await Cv2.dilate(
    pathFrom: CVPathFrom.GALLERY_CAMERA,
    pathString: file.path,
    kernelSize: [2, 2],
  ))!;
  file.writeAsBytesSync(fourthEffect);

  Uint8List fifthEffect = (await Cv2.erode(
    pathFrom: CVPathFrom.GALLERY_CAMERA,
    pathString: file.path,
    kernelSize: [2, 2],
  ))!;
  file.writeAsBytesSync(fifthEffect);

  // bool success = await EdgeDetection.detectEdgeFromGallery(
  //   imagePath,
  //   androidCropTitle: 'Crop',
  //   androidCropBlackWhiteTitle: 'Black White',
  //   androidCropReset: 'Reset',
  // );
  //  file.writeAsBytesSync(firstEffect);
  // print(success);
  return file;
}
 */