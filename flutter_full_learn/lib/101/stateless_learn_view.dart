import 'package:flutter/material.dart';

class StaltessLearn extends StatelessWidget {
  final String text2 = "Berkcan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(text: text2),
          const TitleTextWidget(text: "Flutter"),
          _emptyBox(),
          const TitleTextWidget(text: "Öğrenme"),
          _emptyBox(),
          const TitleTextWidget(text: "Serisi"),
          const _CustomContainer(),
          _emptyBox()
        ],
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 10);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}


/**
 Stateless Widget
 - Durumu değişmeyen widget'lardır.
 - Bir kez oluşturulur ve değiştirilemez.
 */