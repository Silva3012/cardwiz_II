import 'package:cardwiz_app/application/presentation/credit_card_form/bloc/credit_card_form_bloc.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/bloc/credit_card_form_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoButton.filled(
        onPressed: () {
          BlocProvider.of<CreditCardFormBloc>(context).add(OnSubmitEvent());
        },
        child: const Text("Validate"),
      );
    } else {
      return ElevatedButton(
        onPressed: () {
          BlocProvider.of<CreditCardFormBloc>(context).add(OnSubmitEvent());
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(200, 50),
        ),
        child: const Text("Validate"),
      );
    }
  }
}
