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
 * SizedBox ile herhangi bir g??rsel nesneyi tekrar boyutland??rabiliriz.
 * ??skelet olu??turmak i??in kullan??l??r.
 * width ve height de??erleri ile boyutland??r??l??r.
 * child de??eri olu??turulan nesneyi belirtir.
 * SizedBox.shrink() ile bo?? bir nesne olu??turulur.
 * SizedBox.square() ile kare bir nesne olu??turulur. dimension de??eri ile boyutland??r??l??r.
 
 Container
 * ????erisine nesneler yerle??tirece??imiz bir kutu.
 * constraints : BoxConstraints ile kutunun boyutlar??n?? belirtiriz.
 * padding : EdgeInsents.all() ile bir nesneye kenar bo??luklar?? ekleyebiliriz.
 * margin : EdgeInsets.all() ile nesneye d????ar??dan bo??luklar ekleyebiliriz.
 * decoration : BoxDecoration ile nesneye dekorasyon ekleyebiliriz.
 * shape : BoxShape.circle ile nesneyi daire yapar.
 * border : Border.all() ile nesneye ??er??eve ekleyebiliriz.
 * boxShadow : BoxShadow ile nesneye g??lge ekleyebiliriz.
 * gradient : LinearGradient ile nesneye gradient ekleyebiliriz.

 */