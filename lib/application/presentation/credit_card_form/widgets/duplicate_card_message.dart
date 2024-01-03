import 'package:flutter/material.dart';

class DuplicateCardMessage extends StatelessWidget {
  const DuplicateCardMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Duplicate"),
      content: const Text('This card has been stored already'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Exit"),
        ),
      ],
    );
  }
}
