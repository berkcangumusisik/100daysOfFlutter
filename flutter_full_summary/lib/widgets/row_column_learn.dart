import 'package:flutter/material.dart';

class RowColumnLearn extends StatelessWidget {
  const RowColumnLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row Column Kullanımı"),
      ),
      body: const Column(
        children: [
          SizedBox(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  size: 64,
                  color: Colors.red,
                ),
                Icon(
                  Icons.star,
                  size: 64,
                  color: Colors.green,
                ),
                Icon(
                  Icons.favorite,
                  size: 64,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
                size: 64,
                color: Colors.red,
              ),
              Icon(
                Icons.star,
                size: 64,
                color: Colors.green,
              ),
              Icon(
                Icons.favorite,
                size: 64,
                color: Colors.blue,
              ),
            ],
          )
        ],
      ),
    );
  }
}


/**
 * Column Widget
 - Column widget'ı, içine aldığı widget'ları dikey olarak sıralar.
  - mainAxisSize : Column widget'ının boyutunu belirler. Column widget'ı içindeki widget'ların boyutlarına göre boyutunu belirler.
  - mainAxisAlignment : Column widget'ının içindeki widget'ları yatayda hizalar.
  - crossAxisAlignment : Column widget'ının içindeki widget'ları dikeyde hizalar.
 
 * Row Widget
 - Row widget'i , yatay sıralar. 
 
 */