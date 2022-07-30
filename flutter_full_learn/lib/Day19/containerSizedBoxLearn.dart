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
            child: Text("a" * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Container(
              color: Colors.red,
            ),
          ),
          Container(
            width: 50,
            height: 50,
            constraints: const BoxConstraints(
              maxWidth: 500,
              minWidth: 200,
              maxHeight: 500,
            ),
            child: Text("a" * 500),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              //color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [Colors.red, Colors.blue],
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.green,
                  blurRadius: 10,
                  offset: Offset(0.1, 1),
                )
              ],

              //shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white12,
                width: 10,
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            constraints: const BoxConstraints(
              maxWidth: 500,
              minWidth: 200,
              maxHeight: 500,
            ),
            child: Text("a" * 500),
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
/**
 SizedBox 
 * SizedBox ile herhangi bir görsel nesneyi tekrar boyutlandırabiliriz.
 * İskelet oluşturmak için kullanılır.
 * width ve height değerleri ile boyutlandırılır.
 * child değeri oluşturulan nesneyi belirtir.
 * SizedBox.shrink() ile boş bir nesne oluşturulur.
 * SizedBox.square() ile kare bir nesne oluşturulur. dimension değeri ile boyutlandırılır.
 
 Container
 * İçerisine nesneler yerleştireceğimiz bir kutu.
 * constraints : BoxConstraints ile kutunun boyutlarını belirtiriz.
 * padding : EdgeInsents.all() ile bir nesneye kenar boşlukları ekleyebiliriz.
 * margin : EdgeInsets.all() ile nesneye dışarıdan boşluklar ekleyebiliriz.
 * decoration : BoxDecoration ile nesneye dekorasyon ekleyebiliriz.
 * shape : BoxShape.circle ile nesneyi daire yapar.
 * border : Border.all() ile nesneye çerçeve ekleyebiliriz.
 * boxShadow : BoxShadow ile nesneye gölge ekleyebiliriz.
 * gradient : LinearGradient ile nesneye gradient ekleyebiliriz.

 */