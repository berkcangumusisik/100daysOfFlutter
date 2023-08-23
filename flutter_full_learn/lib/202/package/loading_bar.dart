import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({super.key, this.size});
  final double? size;
  final defaultSize = 50.0;
  @override
  Widget build(BuildContext context) {
    return SpinKitFadingCircle(
      color: Colors.red,
      size: size ?? defaultSize,
    );
  }
}
