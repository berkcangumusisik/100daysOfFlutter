import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/init/localization_init.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../global/resource_context.dart';
import '../global/theme_notifier.dart';

class ProductInit {
  final LocalizationInit localizationInit = LocalizationInit();

  final List<SingleChildWidget> providers = [
    Provider(create: (_) => ResourceContext()),
    ChangeNotifierProvider<ThemeNotifier>(create: (context) => ThemeNotifier())
  ];

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
  }
}
