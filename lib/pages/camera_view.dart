

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';




class CameraPage extends StatefulWidget {
  const CameraPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {

  set _imageFile(XFile? value) {
  }


  VideoPlayerController? _controller;

  final ImagePicker _picker = ImagePicker();
 

  void _onImageButtonPressed(ImageSource source,
      {BuildContext? context}) async {
    if (_controller != null) {
      await _controller!.setVolume(0.0);
    } 
    else {
      await _displayPickImageDialog(context!,
          (double? maxWidth, double? maxHeight, int? quality) async {
        try {
          final pickedFile = await _picker.pickImage(
            source: source,
          );
          setState(() {
            _imageFile = pickedFile;
          });
        } catch (e) {
          setState(() {
          });
        }
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: FloatingActionButton(
              onPressed: () {
                _onImageButtonPressed(ImageSource.camera, context: context);
              },
              heroTag: 'image2',
              tooltip: 'Take a Photo',
              child: const Icon(Icons.camera_alt),
            ),
          ),
        ],
      ),
    );
  }


  Future<void> _displayPickImageDialog(
      BuildContext context, OnPickImageCallback onPick) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Take Picture'),

            content: TextButton(
                child: const Text('Snap'),
                onPressed: () {
                  
                  onPick(100, 100, 100);
                  Navigator.of(context).pop();
                }),
            
          );
        });
  }
}

typedef void OnPickImageCallback(
    double? maxWidth, double? maxHeight, int? quality);
