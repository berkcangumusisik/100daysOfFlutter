import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class KartalView extends StatefulWidget {
  const KartalView({super.key});

  @override
  State<KartalView> createState() => _KartalViewState();
}

class _KartalViewState extends State<KartalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Kartal",
              style: context.textTheme.headline1,
            ),
            Icon(context.isAndroidDevice
                ? Icons.android_rounded
                : Icons.ios_share),
            AnimatedContainer(
              duration: context.durationSlow,
              height: context.isKeyBoardOpen ? 0 : context.dynamicHeight(0.15),
              color: Colors.red,
            ),
            TextField(),
            Image.network(''.randomImage),
            InkWell(
                onTap: () {
                  'gumusisikberkcan@gmail.com'.launchEmail;
                  'https://github.com/berkcangumusisik/100daysOfFlutter'
                      .launchWebsite;
                },
                child: Text('berkcan', style: context.textTheme.headline1))
          ],
        ),
      ),
    );
  }
}


/** 
 * Kartal paketi context üzerinden değişiklik yapmamızı sağlar.
 */