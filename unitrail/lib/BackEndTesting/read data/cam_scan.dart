import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:image/image.dart' as img;
import 'package:unitrail/localization_model.dart';
import 'package:camera/camera.dart';
import 'package:unitrail/ClassifierFloors.dart';
import 'package:unitrail/ClassifierZone.dart';

class camScan extends StatefulWidget {
  const camScan({super.key, required this.camera});

  final CameraDescription camera;

  @override
  _camScan createState() => _camScan();
}

class _camScan extends State<camScan> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  late Classifier _floorsClassifer;
  String prediction = "";

  @override
  void initState() {
    super.initState();
    _floorsClassifer = ClassifierZones();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.ultraHigh,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  Future<String> _predict(classify, image) async {
    img.Image imageInput = img.decodeImage(File(image).readAsBytesSync())!;
    var pred = classify.predict(imageInput);
    return pred;
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<XFile> photos = [];
    return Scaffold(
      appBar: AppBar(title: Text("Imgage of your nearest exit sign")),
      // You must wait until the controller is initialized before displaying the
      // camera preview. Use a FutureBuilder to display a loading spinner until the
      // controller has finished initializing.
      body: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Center(
              child: Column(
                  mainAxisSize: MainAxisSize.max,

                  //Widget list for given page.
                  children: <Widget>[
                FutureBuilder<void>(
                  future: _initializeControllerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      // If the Future is complete, display the preview.
                      return CameraPreview(_controller);
                    } else {
                      // Otherwise, display a loading indicator.
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ]))),
      floatingActionButton: FloatingActionButton(
        // Provide an onPressed callback.
        onPressed: () async {
          // Take the Picture in a try / catch block. If anything goes wrong,
          // catch the error.
          try {
            // Ensure that the camera is initialized.
            await _initializeControllerFuture;
            // Attempt to take a picture and get the file `image`
            // where it was saved.
            final image = await _controller.takePicture();
            if (!mounted) return;
            prediction = await _predict(_floorsClassifer, image.path);
            await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DisplayPictureScreen(
                      imagePath: image.path,
                      pred: prediction,
                    )));
          } catch (e) {
            // If an error occurs, log the error to the console.
            //print("####################EERRROOORRRR#############");
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}

// A widget that displays the picture taken by the user.
class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;
  final String pred;

  const DisplayPictureScreen(
      {super.key, required this.imagePath, required this.pred});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pred)),
      // The image is stored as a file on the device. Use the `Image.file`
      // constructor with the given path to display the image.
      body: Image.file(File(imagePath)),
    );
  }
}
