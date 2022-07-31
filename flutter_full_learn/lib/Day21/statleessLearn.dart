import 'package:flutter/material.dart';

class StatelessWidgetLearn extends StatelessWidget {
  const StatelessWidgetLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatelessWidget'),
      ),
      body: Column(
        children: [
          const TitleTextWidget(
            title: "Berkcan",
          ),
          _emptyBox(),
          const TitleTextWidget(
            title: "Berkcan",
          ),
          _emptyBox(),
          const TitleTextWidget(
            title: "Berkcan",
          ),
          _emptyBox(),
          const TitleTextWidget(
            title: "Berkcan",
          ),
          _emptyBox(),
          const TitleTextWidget(
            title: "Berkcan",
          ),
          _CustomContainer(),
          _emptyBox(),
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
  const TitleTextWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
  

/**
 Stateless Widget
 - Sayfada sadece static sayfa yapmayı sağlar.
 - Eğer, kullanacağımız ekranda değişen herhangi bir yapımız yoksa bunu Stateless widget kullanarak oluştururuz. 
 - Sabit yapılarla, durumsuz bir haldir. Yani değişen bir şey yoktur. 
 - Örnek olarak, koyacağımız bir başlık yazısı gibi değişmeyen widgetlarla, stateless widget kullanırız.
 - Temel yapısı
 class StatelessWidgetLearn extends StatelessWidget {
  const StatelessWidgetLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
- Sayfanın komplex yapısı artarsa extract method kullanırak yeni methodlar oluştururuz. 
- Sayfaya özgüyse _ ekleyerek private olarak kullanırız.
 SizedBox ile boşluk bırakabiliriz.
 
 */