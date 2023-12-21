import 'package:flutter/material.dart';

class NameOnCardField extends StatelessWidget {
  const NameOnCardField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: const InputDecoration(
          labelText: "Name on the Card",
          hintText: "Enter your name",
        ),
        onChanged: (String value) {
          // TODO: Save users input in an object
        },
        // controller: nameController,
        keyboardType: TextInputType.name);
  }
}
