import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
            constraints: const BoxConstraints(
                maxWidth: 200, minWidth: 100, minHeight: 10, maxHeight: 120),
            child: Text('aa' * 100, maxLines: 2),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoraiton,
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoraiton = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      boxShadow: const [
        BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
      ],
      border: Border.all(width: 10, color: Colors.white12));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
            boxShadow: const [
              BoxShadow(
                  color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
            ],
            border: Border.all(width: 10, color: Colors.white12));
}
/*
SizedBox() Widget
- SizedBox widget'ı boyutlandırma işlemlerinde kullanılır.
- SizedBox.shrink() widget'ı içerisindeki widget'ın boyutunu sıfırlar.
- SizedBox.square() ile kare boyutunda bir widget oluşturulur. dimension parametresi ile boyutu belirlenir.

Container() Widget
- Container widget'ı içerisindeki widget'ı boyutlandırmak için kullanılır.
- color parametresi ile arkaplan rengi belirlenir.
- constraints parametresi ile boyutlandırma işlemleri yapılır.
- padding parametresi ile içerisindeki widget'ın içerisindeki boşluklar belirlenir. EdgeInsets.all() ile tüm kenarlara boşluk verilebilir.
- margin parametresi ile içerisindeki widget'ın dışındaki boşluklar belirlenir. EdgeInsets.all() ile tüm kenarlara boşluk verilebilir.
- decoration : BoxDecoration() ile içerisindeki widget'ın şekli ve kenarları belirlenir. BoxDecoration() içerisindeki shape parametresi ile şekil belirlenir. Border.all() ile kenarlar belirlenir.
- SizedBox() ile arasındaki fark, SizedBox() widget'ı içerisindeki widget'ı boyutlandırırken, Container() widget'ı içerisindeki widget'ı boyutlandırırken arkaplan rengini de belirleyebiliriz.

Column() Widget
- Column widget'ı dikey yönde sütunlar oluşturmak için kullanılır.
*/