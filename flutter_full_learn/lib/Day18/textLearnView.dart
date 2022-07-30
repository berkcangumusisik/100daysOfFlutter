import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = 'Berkcan';

  final String? userName;

  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: const TextStyle(
                wordSpacing: 2,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                letterSpacing: 2,
                color: Colors.lime,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          Text(
            'Hello $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: ProjectStyles.welcomeStyle,
          ),
          Text(
            'Hello $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: ProjectColors.welcomeColor),
          ),
          Text(userName ?? ''),
          Text(keys.welcome),
        ],
      )),
    );
  }
}

class ProjectStyles {
  static const TextStyle welcomeStyle = TextStyle(
      wordSpacing: 2,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      height: 1.4,
      color: Colors.red);
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcome = "Merhaba";
}
/**
 * Sayfanın gücü bize Material ile geliyor. Bunun için birçok yol var ama biz burada Scaffold widget'ını kullanıyoruz.
 * Scaffold widget'ının içerisine bir çok widget'ı ekleyebiliriz.
 * Center ile ortalama yapıyoruz.
 Text Widgeti
 * Metinsel ifadeleri kullanıcıya göstermek için kullanılır.
 * style: TextStyle() ile metinin tasarımsal özelliklerini belirtiyoruz.
 * wordSpacing ile metinin kelimeleriarasında  boşluklarını belirtiyoruz.
 * letterSpacing ile metinin karakterleri arasında boşluk bırakır.
 * fontSize ile metinin boyutunu belirtiyoruz.
 * fontWeight ile metinin kalın olup normal olup olmayacağını belirtiyoruz.
 * maxLines ile metinin kaç satırını göstermesini istiyoruz.
 * overflow ile metinin ekrana sığmadığında ne yapacağını belirtiyoruz. overflow: TextOverflow.ellipsis ile metinin sonuna ... koyar.
 * textAlign ile metinin hangi yönde yazılacağını belirtiyoruz. 
 * decoration: TextDecoration.underline ile metinin altı çizgili olacağını belirtiyoruz.
 * fontStyle: FontStyle.italic ile metinin italik olacağını belirtiyoruz.
 * color: Colors.colorName ile metinin rengini belirtiyoruz.
 */