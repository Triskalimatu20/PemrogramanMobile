import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'widget/takepicture_screen.dart';

Future<void> main() async {
  // WAJIB sebelum akses kamera
  WidgetsFlutterBinding.ensureInitialized();

  // Ambil semua kamera di device
  final cameras = await availableCameras();

  // Ambil kamera pertama (kamera belakang)
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakePictureScreen(
        // Pass the appropriate camera to the TakePictureScreen widget.
        camera: firstCamera,
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
