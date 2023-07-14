import "package:flutter/material.dart";

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key}) : super(key: key);
  final String name = "Berkcan";
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Learn View"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ("Merhaba $name"),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: ProjectStyles.textStyle,
            ),
            Text(
              ("Hello $name"),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: ProjectStyles.textStyle,
            ),
            Text(
              ("Bonjour $name"),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: ProjectColors.color,
                  ),
            ),
            Text(ProjectKeys.name),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle textStyle = TextStyle(
    wordSpacing: 2,
    letterSpacing: 2,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    color: ProjectColors.color,
  );
}

class ProjectColors {
  static Color color = Colors.green;
}

class ProjectKeys {
  static String name = "Hello World";
}
/*

 Text Widgetı
- Text() widgetı ile yazı yazdırabiliriz.
- style : TextStyle() parametresi ile yazı stili belirleyebiliriz.
- wordSpacing : Kelimeler arası boşluk
- letterSpacing : Harfler arası boşluk
- fontSize : Yazı boyutu
- fontWeight : FontWeight.bold ile yazı kalınlaştırılabilir.
- maxLines : Yazının kaç satırda biteceğini belirler.
- overflow : Yazı sığmazsa ne olacağını belirler.
- overflow : TextOverflow.ellipsis ile yazı sığmazsa ... şeklinde gösterilir.
- textAlign : Yazının hizalanma şeklini belirler.
- textAlign : TextAlign.center ile yazı ortalanır.
- decoration : TextDecoration.underline ile yazı altı çizilir.
- fontStyle : FontStyle.italic ile yazı eğik yazılır.
- color : Yazı rengi belirlenir.
- theme : Theme.of(context).textTheme.headlineLarge ile yazı stili belirlenir. Eğer sonuna ? koyarsak null olma ihtimaline karşı önlem almış oluruz ve copyWith() ile stilin kopyasını alıp üzerinde değişiklik yapabiliriz.

Projenin kaosa düşmemesi için aynı kullanımlarımızı bir sınıf içerisinde toplayabiliriz.



Scaffold Widgetı
- Scaffold() widgetı ile bir sayfa oluşturabiliriz.
- Scaffold() widgetı içerisinde body parametresi ile sayfamızın içeriğini belirleyebiliriz.
- appBar parametresi ile sayfamızın üst kısmına bir appbar ekleyebiliriz.

Center Widgetı
- Center() widgetı ile içerisine aldığı widgetı ortalar.
*/