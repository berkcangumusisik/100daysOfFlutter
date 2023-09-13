import 'package:flutter/material.dart';
import 'package:flutter_full_learn/303/reqrest_resource/viewModel/req_res_view_model.dart';
import 'package:flutter_full_learn/product/extension/string_extension.dart';

class ReqresView extends StatefulWidget {
  const ReqresView({super.key});

  @override
  State<ReqresView> createState() => _ReqresViewState();
}

class _ReqresViewState extends ReqressViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isLoading ? CircularProgressIndicator() : null,
      ),
      body: ListView.builder(
        itemCount: resources?.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Color(resources?[index].color?.colorValue ?? 0),
            child: Text(resources?[index].name ?? ''),
          );
        },
      ),
    );
  }
}
