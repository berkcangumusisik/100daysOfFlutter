import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  late TextEditingController _emailController;
  @override
  void initState() {
    super.initState();
    _emailController =
        TextEditingController(text: "gumusisikberkcan@gmail.com");
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Form İşlemleri"),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                autofocus: true,
                maxLength: 20,
                onChanged: (String value) {
                  if (value.length > 5) {
                    _emailController.value = TextEditingValue(
                        text: value,
                        selection:
                            TextSelection.collapsed(offset: value.length - 2));
                  }
                },
                onSubmitted: (String value) {
                  print("Girilen değer : $value");
                },
                decoration: InputDecoration(
                  hintText: "E-posta adresinizi giriniz.",
                  labelText: "Mail adresi",
                  prefix: const Icon(Icons.mail),
                  suffix: const Icon(Icons.access_alarm),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_emailController.text),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
            ),
          )
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _emailController.text = "berkcan.gumusisik@gmail.com";
          },
          child: const Icon(Icons.add),
        ));
  }
}

/**
 * TextField() : TextField() widget'ı, kullanıcıdan veri girişi almak için kullanılır.
 * keyboardType: TextInputType.number, : Klavye tipini belirler. TextInputType.number ile sadece sayı girişi yapılabilir.
 * textInputAction: TextInputAction.next, : Klavye üzerindeki "ileri" butonunun ne iş yapacağını belirler.
 * autofocus: true, : Sayfa açıldığında otomatik olarak klavyenin açılmasını sağlar.
 * maxLines : TextField() widget'ının kaç satır olacağını belirler.
 * maxLength : TextField() widget'ının kaç karakter olacağını belirler.
 * onChanged : TextField() widget'ının içindeki değer her değiştiğinde çalışacak fonksiyonu belirler.
 * onSubmitted : TextField() widget'ının gönder butonuna basıldığında çalışacak fonksiyonu belirler.
 * 
 * decoration : TextField() widget'ının içindeki değer her değiştiğinde çalışacak fonksiyonu belirler.
 * hintText : TextField() boşken içinde görünecek yazıyı belirler.
 * labelText : TextField() widget'ının başlığını belirler.
 * border : TextField() widget'ının kenarlığını belirler.
 * filled : TextField() widget'ının içini doldurur.
 * fillColor : TextField() widget'ının içini doldururken rengini belirler.
 * prefix : TextField() widget'ının başına bir widget ekler.
 * suffix : TextField() widget'ının sonuna bir widget ekler.
 * 
 */
