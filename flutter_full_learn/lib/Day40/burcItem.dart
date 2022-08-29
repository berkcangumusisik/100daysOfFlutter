import 'package:flutter/material.dart';
import 'package:flutter_full_learn/Day40/burcDetay.dart';
import 'package:flutter_full_learn/Day40/model/burc.dart';


class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({
    Key? key,
    required this.listelenenBurc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => BurcDetay(secilenBurc: listelenenBurc),
            ),
          );
        },
        leading: Image.asset(
          "assets/burcRehberi/" + listelenenBurc.burcKucukResim,
        ),
        title: Text(listelenenBurc.burcAdi),
        subtitle: Text(listelenenBurc.burcTarihi),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
