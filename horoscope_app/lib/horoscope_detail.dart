import 'package:flutter/material.dart';
import 'package:horoscope_app/model/horoscope.dart';
import 'package:palette_generator/palette_generator.dart';

class HoroscopeDetail extends StatefulWidget {
  const HoroscopeDetail({super.key, required this.horoscope});
  final Horoscope horoscope;

  @override
  State<HoroscopeDetail> createState() => _HoroscopeDetailState();
}

class _HoroscopeDetailState extends State<HoroscopeDetail> {
  Color _appBarColor = Colors.pink;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    findAppBarColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          centerTitle: true,
          backgroundColor: _appBarColor,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('${widget.horoscope.name} Burcu ve Özellikleri'),
            background: Image.asset(
              widget.horoscope.bigImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Text(
                widget.horoscope.detail,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
        )
      ],
    ));
  }

  Future<void> findAppBarColor() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage(widget.horoscope.bigImage));
    _appBarColor = _generator.dominantColor!.color;
    setState(() {
      _appBarColor = _appBarColor;
    });
  }
}
