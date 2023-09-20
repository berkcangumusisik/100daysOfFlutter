import 'package:flutter_full_learn/303/lottie_learn.dart';
import 'package:flutter_full_learn/303/navigator/navigate_home_detaill.dart';
import 'package:flutter_full_learn/303/navigator/navigate_home_view.dart';

class NavigatorRoutes {
  static const paragfh = "/";
  final items = {
    paragfh: (context) => LottieLearn(),
    NavigateRoutes.home.withParaf: (context) => NavigateHomeView(),
    NavigateRoutes.homeDetail.withParaf: (context) => NavigateHomeDetail(),
  };
}

enum NavigateRoutes { init, home, homeDetail, detail }

extension NavigateRoutesExtension on NavigateRoutes {
  String get withParaf => "/$name";
}


/**
 * pushnamed() : Bu metot ile ileri doğru sayfa geçişleri yapabiliriz.
 * pushReplacementNamed() : Bu metot ile gidilen sayfayı geriye doğru kapatır ve yeni sayfayı açar.
 */