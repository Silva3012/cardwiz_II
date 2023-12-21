import 'package:flutter/material.dart';

class CardCvv extends StatelessWidget {
  const CardCvv({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        labelText: "CVV",
        hintText: "123",
      ),
      // controller: cvvController,
      keyboardType: TextInputType.number,
      // validator: validateCVV,
      onChanged: (String value) {
        // TODO: Save users input in an object
      },
    );
  }
}
