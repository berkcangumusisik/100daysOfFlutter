import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/product/languages/languageItems.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();

  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: Column(
          children: [
            TextField(
              maxLength: 20,
              buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
                return _animatedContainer(currentLength);
              },
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              autofillHints: const [AutofillHints.email],
              focusNode: focusNodeTextFieldOne,
              inputFormatters: [TextProjectInputFormmater()._formmatter],
              textInputAction: TextInputAction.next,
              decoration: _InputDecarotor().emailInput,
            ),
            TextFormField(
              focusNode: focusNodeTextFieldTwo,
              minLines: 2,
              maxLines: 4,
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      key: key,
      duration: const Duration(seconds: 1),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.green,
    );
  }
}

class TextProjectInputFormmater {
  final _formmatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == "a") {
      return oldValue;
    }
    return oldValue;
  });
}

class _InputDecarotor {
  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,
  );
}

/**
 * TextField
 * TextField ile kullanıcıdan veri alınması sağlanır.
 * decoration: InputDecoration ile kullanıcının girdiği verilerin görünümünü belirleyebiliriz.
 * prefixIcon: TextField'ın üstüne eklenecek icon'ı belirleriz.
 * border: OutlineInputBorder ile TextField'ın çerçevesini belirleyebiliriz.
 * hintText: TextField'ın hint'i belirleriz.
 * labelText: TextField'ın üstündeki label'ı belirleriz.
 * maxLength: TextField'ın en fazla kullanılabileceği karakter sayısını belirleriz.
 * textInputAction: TextField'ın sonuna gelince ne yapılacağını belirleriz.
 * keyboardType: TextField'ın klavye tipini belirleriz.
 * autofocus: TextField'ın otomatik olarak focuslanacağını belirleriz.
 * autofillHints: TextField'ın autofill için kullanılacak hint'leri belirleriz.
 * focusNode: TextField'ın focuslanacağını belirleriz.
 * inputFormatters: TextField'ın girdi formatlarını belirleriz.

 */