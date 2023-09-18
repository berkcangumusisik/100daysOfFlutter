import 'package:collection/collection.dart';
import 'package:flutter_full_learn/303/generic_learn.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});
  test('List best of', () {
    List<GenericUser> users = [
      const GenericUser("ab", "11", 10),
      const GenericUser("ab1", "11", 10),
      const GenericUser("ab2", "11", 10),
    ];

    try {
      final response = users.singleWhere(
        (element) => element.findUserName('x'),
        orElse: () {
          return const GenericUser('name', 'id', 15);
        },
      );

      print(response.name);
    } catch (e) {
      print(e);
    }

    print('${users.where((element) => element.money > 500)}');

    users.addAll([const GenericUser('name', 'id', 5)]);
    users.lastWhere((element) => element.id == '5');

    users.take(5);
    users.remove(const GenericUser('vb1', '11', 5));
    users.removeAt(2);
    users.removeWhere((element) => element.id == 11);

    users.indexOf(const GenericUser('vb1', '11', 5));
    final result = users.indexWhere((element) => element.id == '11');
    if (result >= 0) {
      users[result] = const GenericUser('a', 'b', 15);
    }

    users.expand((element) => [const GenericUser('a', '1 ', 15)]);
  });

  test('List best of with collection', () {
    List<GenericUser> users = [
      const GenericUser("ab", "11", 10),
      const GenericUser("ab1", "11", 10),
      const GenericUser("ab2", "11", 10),
    ];

    final response = users.singleWhereOrNull(
      (element) => element.findUserName('x'),
    );

    users.lastWhereOrNull((element) => element.id == '5');

    users.lastOrNull;
    users.forEachIndexed((index, element) {});
    users.sample(3);
    print(users.first == const GenericUser('ab1', '11', 5));
    print(users.contains(const GenericUser('ab1', '11', 5)));

    users.any((element) => element.money > 5);

    print(response);
  });
}


/**
 * SingleWhere : Listeki elemanlardan ilk tam eşleşmeyi döndürür.


 */