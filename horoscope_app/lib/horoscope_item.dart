import 'package:flutter/material.dart';
import 'package:horoscope_app/model/horoscope.dart';

class HoroscopeItem extends StatelessWidget {
  const HoroscopeItem({super.key, required this.horoscope});
  final Horoscope horoscope;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, "/horoscopeDetail",
              arguments: horoscope);
        },
        leading: Image.asset(
          horoscope.smallImage,
        ),
        title: Text(horoscope.name),
        subtitle: Text(horoscope.date),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
