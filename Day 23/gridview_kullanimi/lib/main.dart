import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    "GridView Kullanımı";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView Kullanımı'),
        ),
        body: Container(
          child: GridView.builder(
          itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.orange, width: 10),
                //borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.red,
                    offset: new Offset(10.0, 5.0),
                    blurRadius: 20.0,
                  )
                ],
                shape: BoxShape.circle,
                color: Colors.blue[100 * ((index + 1) % 8)],
                gradient: LinearGradient(
                    colors: [Colors.yellow, Colors.red],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                image: DecorationImage(
                    image: AssetImage("assets/images/book.jpg"),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter)),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Merhaba Flutter $index",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),

          onTap: () => debugPrint("Merhaba flutter $index tıklanıldı"),
          onDoubleTap: () => debugPrint("Merhaba flutter $index çift tıklanıldı"),
          onLongPress: () => debugPrint("Merhaba flutter $index uzun basıldı"),
          onHorizontalDragStart: (e) => debugPrint("Merhaba flutter $index uzun basıldı $e"),
        );
      }
        ),
        ),
      ),
    );
  }

  GridView GridViewExtentKullanimi() {
    return GridView.extent(
        maxCrossAxisExtent: 200,
        //reverse: true,
        primary: true,
        padding: EdgeInsets.all(10),
        mainAxisSpacing: 40,
        crossAxisSpacing: 20,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            color: Colors.teal.shade200,
            alignment: Alignment.center,
            child: Text(
              "GridView Kullanımı 1",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.teal.shade200,
            alignment: Alignment.center,
            child: Text(
              "GridView Kullanımı 2",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.teal.shade200,
            alignment: Alignment.center,
            child: Text(
              "GridView Kullanımı 3",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.teal.shade200,
            alignment: Alignment.center,
            child: Text(
              "GridView Kullanımı 4",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.teal.shade200,
            alignment: Alignment.center,
            child: Text(
              "GridView Kullanımı 5",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.teal.shade200,
            alignment: Alignment.center,
            child: Text(
              "GridView Kullanımı 6",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.teal.shade200,
            alignment: Alignment.center,
            child: Text(
              "GridView Kullanımı 7",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.teal.shade200,
            alignment: Alignment.center,
            child: Text(
              "GridView Kullanımı 8",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.teal.shade200,
            alignment: Alignment.center,
            child: Text(
              "GridView Kullanımı 9",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.teal.shade200,
            alignment: Alignment.center,
            child: Text(
              "GridView Kullanımı 10",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.teal.shade200,
            alignment: Alignment.center,
            child: Text(
              "GridView Kullanımı 11",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.teal.shade200,
            alignment: Alignment.center,
            child: Text(
              "GridView Kullanımı 12",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.teal.shade200,
            alignment: Alignment.center,
            child: Text(
              "GridView Kullanımı 13",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.teal.shade200,
            alignment: Alignment.center,
            child: Text(
              "GridView Kullanımı 14",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.teal.shade200,
            alignment: Alignment.center,
            child: Text(
              "GridView Kullanımı 15",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            color: Colors.teal.shade200,
            alignment: Alignment.center,
            child: Text(
              "GridView Kullanımı 16",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
  }

  GridView GridViewCountKullanimi() {
    return GridView.count(
          crossAxisCount: 3,
          reverse: true,
          primary: true,
          padding: EdgeInsets.all(10),
          mainAxisSpacing: 40,
          crossAxisSpacing: 20,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              color: Colors.teal.shade200,
              alignment: Alignment.center,
              child: Text(
                "GridView Kullanımı 1",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.teal.shade200,
              alignment: Alignment.center,
              child: Text(
                "GridView Kullanımı 2",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.teal.shade200,
              alignment: Alignment.center,
              child: Text(
                "GridView Kullanımı 3",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.teal.shade200,
              alignment: Alignment.center,
              child: Text(
                "GridView Kullanımı 4",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.teal.shade200,
              alignment: Alignment.center,
              child: Text(
                "GridView Kullanımı 5",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.teal.shade200,
              alignment: Alignment.center,
              child: Text(
                "GridView Kullanımı 6",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.teal.shade200,
              alignment: Alignment.center,
              child: Text(
                "GridView Kullanımı 7",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.teal.shade200,
              alignment: Alignment.center,
              child: Text(
                "GridView Kullanımı 8",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.teal.shade200,
              alignment: Alignment.center,
              child: Text(
                "GridView Kullanımı 9",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.teal.shade200,
              alignment: Alignment.center,
              child: Text(
                "GridView Kullanımı 10",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.teal.shade200,
              alignment: Alignment.center,
              child: Text(
                "GridView Kullanımı 11",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.teal.shade200,
              alignment: Alignment.center,
              child: Text(
                "GridView Kullanımı 12",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.teal.shade200,
              alignment: Alignment.center,
              child: Text(
                "GridView Kullanımı 13",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.teal.shade200,
              alignment: Alignment.center,
              child: Text(
                "GridView Kullanımı 14",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.teal.shade200,
              alignment: Alignment.center,
              child: Text(
                "GridView Kullanımı 15",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.teal.shade200,
              alignment: Alignment.center,
              child: Text(
                "GridView Kullanımı 16",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );
  }
}

/**
 GridView.count()
 * Çok sütunlu kaydırılabilir listeler oluşturmayı sağlar.
 * crossAxisSpacing : Kolonlar arası boşluk
 * crossAxisCount: Kolon sayısı
 GridView.extent()
 * Büyüklüğe göre satırda sıralamayı sağlar.
 */