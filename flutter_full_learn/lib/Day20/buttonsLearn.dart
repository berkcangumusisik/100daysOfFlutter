import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Butonları Öğrenelim'),
      ),
      body: Column(
        children: [
          TextButton(
            child: const Text('Text Button'),
            onPressed: () {},
          ),
          const ElevatedButton(
            onPressed: null,
            child: const Text("Elevated Button"),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.abc_outlined),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Outlined Button'),
          ),
          InkWell(
            onTap: () {},
            child: const Text('custom'),
          ),
          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.abc),
              label: const Text('data')),
          TextButton(
            child: Text('Save', style: Theme.of(context).textTheme.subtitle1),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState
                    .pressed)) //Butona dokunulduysa yapılması gerekenler verilir.
                {
                  return Colors.green;
                }
                return Colors.greenAccent;
              }),
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: const EdgeInsets.all(10)),
            onPressed: () {},
            child: const SizedBox(
              width: 70,
              child: Text(
                'Outlined',
                style: TextStyle(color: Colors.purple),
              ),
            ),
          ),
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
            ),
          ),
        ],
      ),
    );
  }
}
/**
 Buton Çeşitleri
 1. TextButton
 - TextButton içerisine her şey konularak kullanılan bir buton çeşidi.
 - onPressed metodu ile butonun çalışmasını istiyorsak onPressed metodunu yazıyoruz. Callback metodu kullanılır.(){} yazıyoruz.
 - child parametresi ile butonun içeriğini yazıyoruz.

 2. ElevatedButton
 - Arka planı dolgulu olan bir buton çeşidi.
  - onPressed metodu ile butonun çalışmasını istiyorsak onPressed metodunu yazıyoruz. Callback metodu kullanılır.(){} yazıyoruz.
  - child parametresi ile butonun içeriğini yazıyoruz.

  3. IconButton
  - IconButton ile ikonların çalışmasını sağlayan bir buton çeşidi.
  - onPressed metodu ile butonun çalışmasını istiyorsak onPressed metodunu yazıyoruz. Callback metodu kullanılır.(){} yazıyoruz.
  - icon parametresi ile butonun iconu yazıyoruz.

  4. FloatingActionButton
  - Sayfanın üzerinde istedğimiz noktaya konumlandırabildiğimiz bir buton çeşididir.

  5. OutlinedButton
  - Çerçevesi olan bir buton çeşididir.
  - onPressed metodu ile butonun çalışmasını istiyorsak onPressed metodunu yazıyoruz. Callback metodu kullanılır.(){} yazıyoruz.
  - child parametresi ile butonun içeriğini yazıyoruz.

  6. InkWell
  - InkWell sadece gösterilen alanda çalışmasını sağlar.
  - onTap metodu ile butonun çalışmasını istiyorsak onTap metodunu yazıyoruz. Callback metodu kullanılır.(){} yazıyoruz.
  - child parametresi ile butonun içeriğini yazıyoruz.

  ** onPressed null ise buton çalışmaz.
 */