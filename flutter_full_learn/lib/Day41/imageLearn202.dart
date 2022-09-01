import 'package:flutter/material.dart';
import 'package:flutter_full_learn/Day41/animatedLearn.dart';

class ImageLearn202 extends StatefulWidget {
  ImageLearn202({Key? key}) : super(key: key);

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    context.textTheme().subtitle1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Learn 202'),
      ),
      body: ImagePaths.ic_apple_with_school.toWidget(height: 100),
    );
  }
}

enum ImagePaths { ic_apple_with_school }

extension ImagePathsExtension on ImagePaths {
  String path() {
    return "assets/png/$name.png";
  }

  Widget toWidget({double height = 24}) {
    return Image.asset(
      path(),
      height: height,
    );
  }
}
