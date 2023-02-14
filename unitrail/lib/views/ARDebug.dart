import 'package:flutter/material.dart';

class ARDebug extends StatefulWidget{
  const ARDebug({Key? key}): super(key: key);
  
  @override
  State<ARDebug> createState() => _ARDebugState();
}

class _ARDebugState extends State<ARDebug>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Another screen"),
      ),
      body: Container(
        color: Color.fromARGB(255, 28, 125, 121),
        child: Center(
          child: GestureDetector(
            onTap: (){
              print("AR");
            },
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 121, 172, 184),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: Offset(4,4),
                  ),
                   BoxShadow(
                    color: Colors.red,
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(-4,-4),
                  ),
          
                ],
              ),
              child: Center(
                child: Text(
                  "Button",
                  style: TextStyle(
                    color: Color.fromARGB(255, 129, 22, 14), 
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      
    );
  }
}
// late List<CameraDescription> _cameras;

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   _cameras = await availableCameras();
//   runApp(const CameraApp());
// }

// /// CameraApp is the Main Application.
// class CameraApp extends StatefulWidget {
//   /// Default Constructor
//   const CameraApp({Key? key}) : super(key: key);

//   @override
//   State<CameraApp> createState() => _CameraAppState();
// }

// class _CameraAppState extends State<CameraApp> {
//   late CameraController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = CameraController(_cameras[0], ResolutionPreset.max);
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     }).catchError((Object e) {
//       if (e is CameraException) {
//         switch (e.code) {
//           case 'CameraAccessDenied':
//             // Handle access errors here.
//             break;
//           default:
//             // Handle other errors here.
//             break;
//         }
//       }
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!controller.value.isInitialized) {
//       return Container();
//     }
//     return MaterialApp(
//       home: CameraPreview(controller),
//     );
//   }
// }