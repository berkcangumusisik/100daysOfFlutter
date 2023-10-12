import 'package:flutter/material.dart';
import 'package:horoscope_app/data/strings.dart';
import 'package:horoscope_app/horoscope_item.dart';
import 'package:horoscope_app/model/horoscope.dart';

class HoroscopeList extends StatelessWidget {
  late List<Horoscope> horoscopes;
  HoroscopeList({super.key}) {
    horoscopes = createHoroscope();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burç Listesi'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return HoroscopeItem(
              horoscope: horoscopes[index],
            );
          },
          itemCount: horoscopes.length,
        ),
      ),
    );
  }

  List<Horoscope> createHoroscope() {
    List<Horoscope> tempHoroscope = [];
    for (int i = 0; i < 12; i++) {
      var horoscopeName = Strings.HOROSCOPE_NAMES[i];
      var horoscopeDate = Strings.HOROSCOPE_DATES[i];
      var horoscopeDetail = Strings.HOROSCOPE_DETAILS[i];
      var horoscopeSmallImage =
          'assets/images/${Strings.HOROSCOPE_NAMES[i].toLowerCase()}${i + 1}.png';
      var horoscopeBigImage =
          'assets/images/${Strings.HOROSCOPE_NAMES[i].toLowerCase()}_buyuk${i + 1}.png';
      Horoscope addHoroscope = Horoscope(horoscopeName, horoscopeDate,
          horoscopeDetail, horoscopeSmallImage, horoscopeBigImage);

      tempHoroscope.add(addHoroscope);
    }
    return tempHoroscope;
  }
}
