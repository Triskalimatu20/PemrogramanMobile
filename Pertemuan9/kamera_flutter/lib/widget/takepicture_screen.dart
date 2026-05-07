import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'displaypicture_screen.dart';

// A screen that allows users to take a picture using a given camera.
class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({super.key, required this.camera});

  final CameraDescription camera;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();

    _controller = CameraController(widget.camera, ResolutionPreset.medium);

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  //Tampilkan preview kamera
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Take a picture - 244107060025')),

      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // Kamera sudah siap → tampilkan preview
            return CameraPreview(_controller);
          } else {
            // Masih loading
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),

      //Tombol ambil foto
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            //memastikan kamera sudah siap
            await _initializeControllerFuture;

            // Ambil gambar dan simpan ke file
            final image = await _controller.takePicture();

            if (!context.mounted) return;

            // pindah halaman hasil foto
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    DisplayPictureScreen(imagePath: image.path),
              ),
            );
          } catch (e) {
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
