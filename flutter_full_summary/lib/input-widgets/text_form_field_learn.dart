import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class TextFormFieldLearn extends StatefulWidget {
  const TextFormFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFormFieldLearn> createState() => _TextFormFieldLearnState();
}

class _TextFormFieldLearnState extends State<TextFormFieldLearn> {
  String _email = "";
  String _password = "";
  String _username = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Form Field Kullanımı"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: _formKey, // Add key to your Form
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Kullanıcı adınızı giriniz.",
                    labelText: "Kullanıcı Adı",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Lütfen kullanıcı adınızı giriniz.";
                    } else if (value.length < 3) {
                      return "Lütfen kullanıcı adınızı 3 karakterden fazla giriniz.";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    _username = newValue!;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Mailinizi giriniz.",
                    labelText: "Mail Adresiniz",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || !EmailValidator.validate(value)) {
                      return "Geçerli bir mail adresi giriniz.";
                    } else if (value.isEmpty) {
                      return "Lütfen mail adresinizi giriniz.";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    _email = newValue!;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Şifrenizi giriniz.",
                    labelText: "Şifre",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Lütfen şifrenizi giriniz.";
                    } else if (value.length < 6) {
                      return "Lütfen şifrenizi 6 karakterden fazla giriniz.";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (newValue) {
                    _password = newValue!;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      bool validate = _formKey.currentState!.validate();
                      if (validate) {
                        _formKey.currentState!.save();
                      }

                      String message =
                          "Kullanıcı adı : $_username\nMail adresi : $_email\nŞifre : $_password";

                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("Bilgileriniz"),
                            content: Text(message),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Kapat"))
                            ],
                          );
                        },
                      );
                      _formKey.currentState!.reset();
                    },
                    child: const Text("Kayıt Ol")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


/**
 * TextFormField() : TextField() widget'ının bir üst sürümüdür. TextField() widget'ının tüm özelliklerini içerir.
 * initialValue : TextFormField() widget'ının içerisindeki varsayılan değeri belirler.
 * Form() : Form widget'ı, form işlemlerini kolaylaştırmak için kullanılır.
 * autovalidateMode : Form widget'ının içerisindeki TextFormField() widget'larının otomatik olarak doğrulanmasını sağlar.
 * validator : Form widget'ının içerisindeki TextFormField() widget'larının doğrulanmasını sağlar.  
 * onSaved : Form widget'ının içerisindeki TextFormField() widget'larının değerlerini kaydeder.
 * 
 * GlobalKey<FormState>() : Form widget'ının içerisindeki TextFormField() widget'larının değerlerini kaydeder.
 */