import 'package:flutter/material.dart';

part 'part_appbar.dart';

class PartofLearn extends StatefulWidget {
  const PartofLearn({super.key});

  @override
  State<PartofLearn> createState() => _PartofLearnState();
}

class _PartofLearnState extends State<PartofLearn> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _PartOfAppBar(),
      body: Text('data'),
    );
  }
}

/** 
 * Part - Part of
- Birçok dosya sanki tek bir dosyaymış gibi kullanılabilir.
- Bu işlemi yapabilmek için dosyamızın başına part of "./dosya_adi.dart"; yazmamız gerekir.
- Bu işlemi yaptıktan sonra dosyamızı kullanmak istediğimiz yerde part "./dosya_adi.dart"; yazmamız gerekir.
 */