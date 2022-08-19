// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  MyCollectionsDemos({Key? key}) : super(key: key);
  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionsModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        padding: PaddingUtility().paddingHorizontal,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionsModel model,
  })  : _model = model,
        super(key: key);

  final CollectionsModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: PaddingUtility().paddingBottom,
        child: SizedBox(
          height: 300,
          child: Padding(
            padding: PaddingUtility().paddingGeneral,
            child: Column(children: [
              Expanded(
                child: Image.asset(
                  _model.imagePath,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_model.title),
                    Text('${_model.price} eth'),
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}

class CollectionsModel {
  final String imagePath;
  final String title;
  final double price;
  CollectionsModel({
    required this.imagePath,
    required this.title,
    required this.price,
  });
}

class CollectionItems {
  late final List<CollectionsModel> items;
  CollectionItems() {
    items = [
      CollectionsModel(
          imagePath: ProjectImages.imageCollection,
          title: "Abstract Art",
          price: 3.4),
      CollectionsModel(
          imagePath: ProjectImages.imageCollection,
          title: "Abstract Art2",
          price: 3.4),
      CollectionsModel(
          imagePath: ProjectImages.imageCollection,
          title: "Abstract Art 3",
          price: 3.4),
      CollectionsModel(
          imagePath: ProjectImages.imageCollection,
          title: "Abstract Art 4",
          price: 3.4),
    ];
  }
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10.0);
  final paddingBottom = const EdgeInsets.only(top: 10.0);
  final paddingGeneral = const EdgeInsets.all(20);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImages {
  static const imageCollection = 'assets/png/image_collection.png';
}
