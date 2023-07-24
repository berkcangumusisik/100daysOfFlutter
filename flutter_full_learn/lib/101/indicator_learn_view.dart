import 'package:flutter/material.dart';

class IndicatorLearnView extends StatelessWidget {
  const IndicatorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [CenterCircularProgress()],
      ),
      body: Center(
        child: LinearProgressIndicator(),
      ),
    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
/*
- LinearProgressIndicator: Yatay bir şekilde ilerleyen bir indikatördür.
- CircularProgressIndicator: Dairesel bir şekilde ilerleyen bir indikatördür.

*/