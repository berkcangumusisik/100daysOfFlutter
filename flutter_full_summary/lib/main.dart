import 'package:flutter/material.dart';
import 'package:flutter_full_summary/widgets/expanded_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const ExpandedLearn(),
      debugShowCheckedModeBanner: false,
    );
  }
}
/**
 * Widget : Flutter'da her şey bir widget'tır. Widget'lar, kullanıcı arayüzünün her bir parçasını oluşturur.
 * pubspec.yaml : Uygulamanızın kaynaklarını ve bağımlılıklarını tanımlar.
 * main.dart : Uygulamanızın giriş noktasıdır.
 * lib : Uygulamanızın kodunu içeren klasördür.
 * test : Uygulamanızın testlerini içeren klasördür.
 * android : Android uygulamanızın kaynak kodunu içeren klasördür.
 * ios : iOS uygulamanızın kaynak kodunu içeren klasördür.
 * web : Web uygulamanızın kaynak kodunu içeren klasördür.
 * windows : Windows uygulamanızın kaynak kodunu içeren klasördür.
 * 
 * void main(){
 *    runApp(MyApp());
 * } ile uygulamamızı çalıştırıyoruz.
 
 MaterialApp() : Uygulamamızın temel widget'ıdır. MaterialApp() widget'ı, uygulamamızın temel tasarımını oluşturur.
 */