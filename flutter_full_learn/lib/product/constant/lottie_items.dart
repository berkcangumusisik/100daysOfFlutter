enum LottieItems { themeChage }

extension LottieItemsExtension on LottieItems {
  String _path() {
    switch (this) {
      case LottieItems.themeChage:
        return 'lottie_theme_change';
    }
  }

  String get imageLottiePath => 'assets/lottie/${_path()}.json';
}
