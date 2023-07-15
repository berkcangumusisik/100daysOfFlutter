import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({super.key});

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
                return Colors.yellow;
              }
              return Colors.red;
            })),
            onPressed: () {},
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Kaydet"),
          ),
          IconButton(
            onPressed: () {
              // servise istek at
              // buton rengini değiştir
            },
            icon: Icon(Icons.save),
          ),
          FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.save),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            child: Text("Kaydet"),
          ),
          InkWell(
            onTap: () {},
            child: Text("Kaydet"),
          ),
          Container(
            height: 50,
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
                  style: Theme.of(context).textTheme.headline5,
                ),
              ))
        ],
      ),
    );
  }
}
/**
 ** Button Widget'ları
 onPressed: Butona tıklandığında çalışacak fonksiyonu belirler. (){}
 
 1. TextButton
 - TextButton içerisine bir child alır.
 - Arkaplan rengi yoktur.
 - child kısmına her şey gelebilir.

 2. ElevatedButton
 - Arka plan rengi vardır.

 3. IconButton 
  - Butonun içerisine icon eklemek için kullanılır.

  4. FloatingActionButton
  - Dairesel bir simge eklemek için kullanılır.

  5. OutlinedButton
  - Butonun kenarlarını belirlemek için kullanılır.

  6. InkWell
  - Butonun herhangi bir yerine tıklandığında çalışacak fonksiyonu belirler.
  - onTap: (){}

  onpressed null olursa buton pasif olur.
 */