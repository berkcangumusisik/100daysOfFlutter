import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text("Container Widget"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 300,
          height: 300,
          constraints: const BoxConstraints(
            maxWidth: 400,
            maxHeight: 400,
            minWidth: 200,
            minHeight: 200,
          ),
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          color: Colors.tealAccent,
          child: Text(
            "Flutter " * 20,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

/**
 * Container Widget
 - Container widget'ı, uygulamamızda bir alan oluşturmak için kullanılır.
 - Eğer Container widget'ı Scaffold widget'ının içinde kullanılırsa ve child yoksa , Container widget'ı Scaffold widget'ının tamamını kaplar.
 - width : Container widget'ının genişliğini belirler.
 - height : Container widget'ının yüksekliğini belirler.
 - alignment : Container widget'ının içindeki yazının hizalanmasını belirler.
 - constraints : Container widget'ının genişlik ve yükseklik değerlerini belirler.
 - margin : Container widget'ının dış boşluğunu belirler.
 - padding : Container widget'ının iç boşluğunu belirler.

 Center Widget
 - İçine aldığı widget'ı ortalar.
 */