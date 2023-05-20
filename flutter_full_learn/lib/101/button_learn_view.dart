import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text('Save', style: Theme.of(context).textTheme.subtitle1),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
              return Colors.white;
            })),
            onPressed: () {},
          ),
          const ElevatedButton(onPressed: null, child: Text('data')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
          FloatingActionButton(
            onPressed: () {
              // servise istek at
              // sayfanin rengini duzenle
            },
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.all(10)),
              onPressed: () {},
              child: const SizedBox(width: 200, child: Text('data'))),
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.abc),
              label: const Text('data')),
          InkWell(
            onTap: () {},
            child: const Text('custom'),
          ),
          Container(
            height: 100,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, right: 40, left: 40),
                child: Text(
                  'Place Bid',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ))
        ],
      ),
    );
  }
}
/**
 * Text Button
 - Text Button, içerisinde yazı bulunan bir butondur. Arka planı ve opacity değeri olmayan, padding değeri bulunan bir butondur.
 - onPressed: Butona tıklandığında çalışacak fonksiyonu belirtir.
 - child: Butonun içerisindeki yazıyı belirtir.
 
 Elevated Button
  - Elevated Button, içerisinde yazı bulunan bir butondur. Arka planı ve opacity değeri bulunan bir butondur.
  - onPressed: Butona tıklandığında çalışacak fonksiyonu belirtir.
  - child: Butonun içerisindeki yazıyı belirtir.

  Icon Button
  - Icon Button, içerisinde icon bulunan bir butondur. Arka planı ve opacity değeri bulunan bir butondur.
  - onPressed: Butona tıklandığında çalışacak fonksiyonu belirtir.
  - icon: Butonun içerisindeki iconu belirtir.

  FloatingActionButton
  - FloatingActionButton, içerisinde icon bulunan bir butondur. Arka planı ve opacity değeri bulunan bir butondur. Icon Button'dan farkı yuvarlak olmasıdır.
  - onPressed: Butona tıklandığında çalışacak fonksiyonu belirtir.

  Outlined Button
  - Outlined Button, içerisinde yazı bulunan bir butondur. Arka planı ve opacity değeri olmayan, padding değeri bulunan bir butondur.

  - onPressed: Butona tıklandığında çalışacak fonksiyonu belirtir.
  - child: Butonun içerisindeki yazıyı belirtir.

  InkWell
  - Bulunduğu widget'a tıklanabilirlik özelliği kazandırır.
  - Daha düzenlenebilir bir widgettır.

  onPressed: null yaparsak buton pasif olur.
 */
