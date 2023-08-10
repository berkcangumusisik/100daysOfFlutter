import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({super.key});

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(color: Colors.white);
          },
          itemBuilder: (context, index) {
            return SizedBox(
              height: 100,
              child: Column(
                children: [
                  Expanded(child: Image.network('https://picsum.photos/200')),
                  Text('$index')
                ],
              ),
            );
          },
          itemCount: 15),
    );
  }
}
/**
 ListView.seperated bize bir ayırıcı verir
 - itemBuilder: her bir eleman için ne döndüreceğimizi belirtiriz
 - itemCount: kaç tane eleman olacağını belirtiriz
 - separatorBuilder: her bir eleman arasına ne koyacağımızı belirtiriz


 ListView.builder ile bizler bir liste oluşturur. 
 */