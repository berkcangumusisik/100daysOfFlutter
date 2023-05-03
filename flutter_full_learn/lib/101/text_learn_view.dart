import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = "Berkcan";
  final String? userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome $name ${name.length}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              "Hello $name ${name.length}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              "Hello $name ${name.length}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: ProjectColors.welcomeColor),
            ),
            Text(userName ?? ''),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    color: Colors.limeAccent,
    fontSize: 30,
    wordSpacing: 2,
    letterSpacing: 2,
    fontWeight: FontWeight.bold,
  );
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}
/**
 * Sayfanın gücü bize Material ile geliyor. Bunun için birçok yol var ama biz burada Scaffold widget'ını kullanıyoruz.
 * Scaffold widget'ının içerisine bir çok widget'ı ekleyebiliriz.
 * Center ile ortalama yapıyoruz.
 Text Widgeti
 * Metinsel ifadeleri kullanıcıya göstermek için kullanılır.
 * maxLines ile kaç satır olacağını belirleriz.
 * overflow ile metnin taşması durumunda ne olacağını belirleriz.
 * style : TextStyle ile metnin stilini belirleriz.
 * fontSize ile metnin boyutunu belirleriz.
 * wordSpacing ile kelime aralarındaki boşluğu belirleriz.
 * letterSpacing ile harfler arasındaki boşluğu belirleriz.
 * fontWeight: FontWeight.bold ile metnin kalınlığını belirleriz.
 * textAlign: TextAlign.center ile metnin ortalanmasını sağlarız. Ayrıca TextAlign.left, TextAlign.right, TextAlign.justify gibi değerler de kullanılabilir. justify ile metin sağa ve sola yaslanır.
 * textDecoration: TextDecoration.underline ile metnin altını çizeriz. Ayrıca TextDecoration.lineThrough ile metnin ortasından çizgi geçiririz.
 * fontStyle: FontStyle.italic ile metnin italik olmasını sağlarız.
 * color: Colors.renk ile metnin rengini belirleriz.
 */