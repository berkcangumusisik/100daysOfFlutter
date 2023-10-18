import 'package:dynamic_notes_app/constants/app_constant.dart';
import 'package:dynamic_notes_app/helper/data_helper.dart';
import 'package:flutter/material.dart';

class LessonList extends StatelessWidget {
  LessonList({super.key, required this.onDismiss});
  final Function onDismiss;

  List allLessons = DataHelper.allLessons;

  @override
  Widget build(BuildContext context) {
    return allLessons.isNotEmpty
        ? ListView.builder(
            itemBuilder: (context, index) {
              return Dismissible(
                key: UniqueKey(),
                direction: DismissDirection.startToEnd,
                onDismissed: (direction) {
                  onDismiss(index);
                },
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Card(
                      child: ListTile(
                          title: Text(
                            allLessons[index].name,
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Consts.primaryColor,
                            child: Text((allLessons[index].letterNote *
                                    allLessons[index].credit)
                                .toStringAsFixed(0)),
                          ),
                          subtitle: Text(
                            "Kredi: ${allLessons[index].credit}  Ders Notu: ${allLessons[index].letterNote}",
                          ))),
                ),
              );
            },
            itemCount: allLessons.length,
          )
        : Container(
            child: Center(
                child: Text(
              "Lütfen Ders Ekleyin",
              style: Consts.headingStyle,
            )),
          );
  }
}
