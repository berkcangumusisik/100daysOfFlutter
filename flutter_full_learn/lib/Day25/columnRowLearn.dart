import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column & Row Kullanımı'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4, //%40
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.red)),
                Expanded(child: Container(color: Colors.green)),
                Expanded(child: Container(color: Colors.blue)),
                Expanded(child: Container(color: Colors.pink)),
              ],
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('a'),
                  Text('a2'),
                  Text('a3'),
                ],
              )),
          SizedBox(
            height: ProjectContainerSizes.cardHeight,
            child: Column(
              children: const [
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Expanded(child: Text('data')),
                Spacer(),
                Expanded(child: Text('data')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}
/**
 * core klasörü projeye özgü olmayan kodların yazııldığı klasördür.
 * product klasörü projeye özgü kodların yazıldığı klasördür.
 Column Widget
 * Dikey olarak çizilen bir widget.
 * Column widget'ının içeriği bir dizi widget'larının bir araya yerleştirilir.
 * Satırların bir araya yerleştirilmesi için children değişkeni kullanılır.
 Row Widget
  * Yatay olarak çizilen bir widget.
  * Row widget'ının içeriği bir dizi widget'larının bir araya yerleştirilir.
 Expanded Widget
 - Benzer widgetlardan birinin mümkün olan alana esnetmek istersek kullanırız.
 - Alanın kullanıcının belirlediği oranına göre kullanılır.
 - flex değeri kullanıcının belirlediği oranını belirler.
 Spacer Widget
 - Spacer widget'ının içeriği boştur.
 MainAxisAlignment
 - Row veya Column içinde Row ise yatayda, Column ise dikeyde yerleştirilir.
 - mainAxisAlignment: MainAxisAlignment.center, //Ortalar.
 CrossAxisAlignment
  - Row veya Column içinde Row ise dikeyde, Column ise yatayda yerleştirilir.
  - crossAxisAlignment: CrossAxisAlignment.center, //Ortalar.
  MainAxisSize
  -  Ana eksen boyutunu belirler. 
  - MainAxisSize.min, //Minimum boyut.
  - MainAxisSize.max, //Maximum boyut.
 */