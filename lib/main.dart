import 'package:cardwiz_app/application/presentation/credit_card_form/credit_card_form_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const CreditCardFormWrapperProvider(),
    );
  }
}
