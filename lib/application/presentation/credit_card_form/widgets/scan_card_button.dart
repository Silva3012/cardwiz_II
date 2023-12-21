import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class ScanCardButton extends StatelessWidget {
  const ScanCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoButton(
        onPressed: () {},
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.camera_alt),
            SizedBox(width: 8),
            Text("Scan Card"),
          ],
        ),
      );
    } else {
      return ElevatedButton(
        onPressed: () {},
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.camera_alt),
            SizedBox(width: 8),
            Text("Scan Card"),
          ],
        ),
      );
    }
  }
}
