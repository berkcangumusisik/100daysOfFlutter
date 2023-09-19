import 'package:flutter/material.dart';

class NavigateHomeDetail extends StatefulWidget {
  const NavigateHomeDetail({super.key, this.id});
  final String? id;

  @override
  State<NavigateHomeDetail> createState() => _NavigateHomeDetailState();
}

class _NavigateHomeDetailState extends State<NavigateHomeDetail> {
  String? _id;
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final _modelId = ModalRoute.of(context)?.settings.arguments;
      setState(() {
        _id = _modelId is String ? _modelId : widget.id;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _id ?? "",
        ),
      ),
    );
  }
}
