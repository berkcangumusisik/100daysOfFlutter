import 'package:flutter/material.dart';

class OtherFormFieldLearn extends StatefulWidget {
  const OtherFormFieldLearn({super.key});

  @override
  State<OtherFormFieldLearn> createState() => _OtherFormFieldLearnState();
}

class _OtherFormFieldLearnState extends State<OtherFormFieldLearn> {
  bool checkBoxState = false;
  String? city = "";
  bool switchState = false;
  double sliderValue = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Diğer Form Elemanları"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              CheckboxListTile(
                value: checkBoxState,
                onChanged: (value) {
                  setState(() {
                    checkBoxState = value!;
                  });
                },
                activeColor: Colors.red,
                title: const Text("Checkbox Title"),
                subtitle: const Text("Checkbox Subtitle"),
                secondary: const Icon(Icons.add),
                selected: true,
              ),
              RadioListTile(
                value: "Ankara",
                groupValue: city,
                onChanged: (value) {
                  setState(() {
                    city = value;
                    debugPrint("Seçilen değer : $value");
                  });
                },
                title: const Text("Ankara"),
              ),
              RadioListTile(
                value: "Bursa",
                groupValue: city,
                onChanged: (value) {
                  setState(() {
                    city = value;
                    debugPrint("Seçilen değer : $value");
                  });
                },
                title: const Text("Bursa"),
              ),
              RadioListTile(
                value: "İstanbul",
                groupValue: city,
                onChanged: (value) {
                  setState(() {
                    city = value;
                    debugPrint("Seçilen değer : $value");
                  });
                },
                title: const Text("İstanbul"),
              ),
              SwitchListTile(
                value: switchState,
                onChanged: (value) {
                  setState(() {
                    switchState = value;
                  });
                },
                title: const Text("Switch Title"),
                subtitle: const Text("Switch Subtitle"),
                secondary: const Icon(Icons.add),
              ),
              Slider(
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
                min: 10,
                max: 20,
                divisions: 10,
                label: sliderValue.toString(),
              )
            ],
          ),
        ));
  }
}


/**
 * CheckboxListTile : CheckboxListTile, bir ListTile'ın içine yerleştirilmiş bir Checkbox widget'ıdır.
 * activeColor : Checkbox'ın seçili olduğunda alacağı renktir.
 * onChanged : Checkbox'ın seçili olup olmadığını değiştirmek için kullanılır.
 * title : Checkbox'ın başlığını belirler.
 * subtitle : Checkbox'ın alt başlığını belirler.
 * secondary : Checkbox'ın başlığının sol tarafına bir widget yerleştirmek için kullanılır.
 * selected : Checkbox'ın seçili olup olmadığını belirler.
 * 
 * RadioListTile : RadioListTile, bir ListTile'ın içine yerleştirilmiş bir Radio widget'ıdır.
 * value : Radio'nun değerini belirler.
 * groupValue : Radio'nun hangi gruba ait olduğunu belirler.
 * onChanged : Radio'nun seçili olup olmadığını değiştirmek için kullanılır.
 * 
 * SwitchListTile : SwitchListTile, bir ListTile'ın içine yerleştirilmiş bir Switch widget'ıdır.
 * value : Switch'in değerini belirler.
 * onChanged : Switch'in seçili olup olmadığını değiştirmek için kullanılır.
 * title : Switch'in başlığını belirler.
 * 
 * Slider : Slider, bir değer aralığında bir değer seçmek için kullanılır.
 */