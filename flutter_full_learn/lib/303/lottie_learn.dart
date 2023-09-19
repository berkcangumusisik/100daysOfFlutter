import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/constant/duration_items.dart';
import 'package:flutter_full_learn/product/constant/lottie_items.dart';
import 'package:flutter_full_learn/product/global/theme_notifier.dart';
import 'package:flutter_full_learn/product/navigator/navigator_routes.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LottieLearn extends StatefulWidget {
  const LottieLearn({super.key});

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

class _LottieLearnState extends State<LottieLearn>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool isLight = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: DurationItems.durationNormal());
    navigateToHome();
  }

  Future<void> navigateToHome() async {
    await Future.delayed(
      Duration(seconds: 2),
    );
    Navigator.pushNamed(
        context,
        NavigateRoutes.home
            .withParaf); //pushnamed() : Bu metot ile bir sayfaya geçiş yapabiliriz.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () async {
              await controller.animateTo(isLight ? 0.5 : 1);
              isLight = !isLight;
              Future.microtask(() {
                context.read<ThemeNotifier>().changeTheme();
              });
            },
            child: Lottie.asset(
              LottieItems.themeChage.imageLottiePath,
              repeat: false,
            ),
          ),
        ],
      ),
      body: LoadingLottie(),
    );
  }
}

class LoadingLottie extends StatelessWidget {
  const LoadingLottie({
    super.key,
  });
  final _loadingLottie =
      "https://lottie.host/38ebb9c1-97ad-4b31-a5cc-6e829f19515a/wfecYPREod.json";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.network(_loadingLottie),
    );
  }
}

/** 
  Lotie : Bu kütüphane ile animasyonlu uygulamalar geliştirebiliriz.
  - Lottie.network() : Bu widget ile bir url üzerinden animasyonu çekebiliriz.
  - Lottie.asset() : Bu widget ile bir asset üzerinden animasyonu çekebiliriz.
 */