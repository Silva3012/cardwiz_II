import 'package:flutter/material.dart';

class SuccessMessage extends StatelessWidget {
  const SuccessMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Success"),
      content: const Text(
          'Credit card information has been successfully validated.'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Okay"),
        ),
      ],
    );
  }
}
