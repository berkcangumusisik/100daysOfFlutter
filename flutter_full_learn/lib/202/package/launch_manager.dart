import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  void launcURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
