import 'package:flutter/material.dart';

import '../../face_detector/face_detector_view.dart';
import '../../object_detector/object_detector_view.dart';
import '../../textrecognition/text_view/text_detector_view.dart';
import 'widgets/customcard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Machine Learning'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  CustomCard('Text Recognition', TextRecognizerView()),
                  CustomCard('Object Detection', ObjectDetectorView()),
                  CustomCard('Face Detection', FaceDetectorView()),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
