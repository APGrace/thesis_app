import 'dart:io';
import 'dart:ui';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leaf Disease Detection',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CameraScreen(),
    );
  }
}

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  XFile? _imageFile;
  List<CameraDescription>? _cameras;
  bool _isCameraInitialized = false;

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  Future<void> initializeCamera() async {
    _cameras = await availableCameras();
    if (_cameras != null && _cameras!.isNotEmpty) {
      _controller = CameraController(_cameras![0], ResolutionPreset.high);
      await _controller.initialize();
      setState(() {
        _isCameraInitialized = true;
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> takePicture() async {
    if (!_controller.value.isInitialized) {
      return;
    }

    try {
      XFile imageFile = await _controller.takePicture();
      setState(() {
        _imageFile = imageFile;
      });
    } catch (e) {
      print(e);
    }
  }

  void onTapIdentify(BuildContext context) async {
    await takePicture();
    if (_imageFile != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FrameTwentyTwoDialog(imageFile: _imageFile!),
        ),
      );
    }
  }

  Widget _buildPhotos(BuildContext context) {
    return Positioned(
      left: 16,
      bottom: 16,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                // Handle photo button tap
              },
              icon: Icon(Icons.photo),
            ),
            SizedBox(width: 16),
            IconButton(
              onPressed: () {
                onTapIdentify(context);
              },
              icon: Icon(Icons.camera_alt),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera'),
      ),
      body: _isCameraInitialized
          ? Stack(
              children: [
                Column(
                  children: [
                    AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: CameraPreview(_controller),
                    ),
                  ],
                ),
                _buildPhotos(context),
              ],
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}

class FrameTwentyTwoDialog extends StatelessWidget {
  final XFile imageFile;

  const FrameTwentyTwoDialog({Key? key, required this.imageFile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Identify Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                children: [
                  kIsWeb
                      ? Image.network(imageFile.path)
                      : Image.file(File(imageFile.path)),
                  CustomPaint(
                    size: Size.infinite,
                    painter: DiseaseSpotPainter(diseaseSpots: [
                      Rect.fromLTWH(50, 100, 100, 100),
                      Rect.fromLTWH(200, 150, 80, 80),
                      Rect.fromLTWH(100, 300, 120, 120),
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle delete action
                  },
                  child: Text('Delete'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle save action
                  },
                  child: Text('Save'),
                ),
              ],
            ),
            SizedBox(height: 20),
            const Text(
              'Identification in progress...',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// Custom Painter class to draw red boxes around detected disease spots
class DiseaseSpotPainter extends CustomPainter {
  final List<Rect> diseaseSpots;

  DiseaseSpotPainter({required this.diseaseSpots});

  @override
  void paint(Canvas canvas, Size size) {
    // Draw red boxes around the detected disease spots
    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    for (Rect spot in diseaseSpots) {
      canvas.drawRect(spot, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
