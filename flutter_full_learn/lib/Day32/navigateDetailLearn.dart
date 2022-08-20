import 'package:flutter/material.dart';

class NavigateLearn extends StatefulWidget {
  NavigateLearn({Key? key, this.isOkey = false})
      : super(
          key: key,
        );
  final bool isOkey;
  @override
  State<NavigateLearn> createState() => _NavigateLearnState();
}

class _NavigateLearnState extends State<NavigateLearn> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //  ModalRoute.of(context).settings.arguments
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(!widget.isOkey);
            },
            icon: Icon(Icons.check,
                color: widget.isOkey ? Colors.red : Colors.green),
            label: widget.isOkey ? const Text('Red') : const Text('Onayla')),
      ),
    );
  }
}
