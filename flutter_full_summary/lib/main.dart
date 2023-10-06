import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_full_summary/widgets/gridview_builder_learn.dart';

void main() {
  runApp(const MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const GridViewBuilder(),
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
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


 hotReload : Uygulamanızı çalışırken güncellemek için kullanılır.

 hotRestart : Uygulamanızı yeniden başlatmak için kullanılır. Bu, uygulamanızın durumunu sıfırlar.
 */