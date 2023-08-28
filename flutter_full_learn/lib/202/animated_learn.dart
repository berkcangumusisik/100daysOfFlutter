import 'package:flutter/material.dart';

const double kZero = 0;

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({Key? key}) : super(key: key);

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  bool _isVisible = false;
  bool _isOpacity = false;
  // Text('data', style: context.textTheme().headline1)
  late AnimationController controller;

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _placeHolderWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeVisible();
          controller.animateTo(_isVisible ? 1 : 0);
        },
      ),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
                duration: _DurationItems.durationLow,
                opacity: _isOpacity ? 1 : 0,
                child: const Text('data')),
            trailing: IconButton(
                onPressed: () {
                  _changeOpacity();
                },
                icon: const Icon(Icons.precision_manufacturing_rounded)),
          ),
          AnimatedDefaultTextStyle(
              child: const Text('data'),
              style: (_isVisible
                      ? context.textTheme().headline1
                      : context.textTheme().subtitle1) ??
                  const TextStyle(),
              duration: _DurationItems.durationLow),
          AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: controller,
          ),
          AnimatedContainer(
            duration: _DurationItems.durationLow,
            height:
                _isVisible ? kZero : MediaQuery.of(context).size.width * 0.2,
            width: MediaQuery.of(context).size.height * 0.2,
            color: Colors.blue,
            margin: const EdgeInsets.all(5),
          ),
          Expanded(
              child: Stack(
            children: const [
              AnimatedPositioned(
                  top: 10,
                  curve: Curves.elasticOut,
                  child: Text('data'),
                  duration: _DurationItems.durationLow)
            ],
          )),
          Expanded(
            child: AnimatedList(itemBuilder: (context, index, animation) {
              return const Text('data');
            }),
          )
        ],
      ),
    );
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      duration: _DurationItems.durationLow,
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
}
/**
 * AnimatedCrossFade => 2 tane widget alır. 1. widget görünürken 2. widget görünmez. 1. widget görünmezken 2. widget görünür. Görünürlük geçişleri animasyonlu olur. duration parametresi animasyonun süresini belirler. crossFadeState parametresi hangi widget'ın görünür olacağını belirler.
 * AnimatedOpacity => opacity parametresi widget'ın görünürlüğünü belirler. duration parametresi animasyonun süresini belirler.
 * AnimatedDefaultTextStyle => Bu widget ile bir text'in style'ını değiştirebiliriz. 
 * AnimatedIcon => Bu widget ile bir icon'un animasyonunu değiştirebiliriz. 
 * AnimatedContainer => Bu widget ile bir container'ın animasyonunu değiştirebiliriz.
 * AnimatedPositioned => Bu widget ile bir widget'ın pozisyonunu değiştirebiliriz.
 * 
 * 
 extension ile bir widget'a yeni bir method ekleyebiliriz.
 */