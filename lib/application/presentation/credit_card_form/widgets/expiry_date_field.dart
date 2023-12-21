import 'package:flutter/material.dart';

class ExpriyDateField extends StatelessWidget {
  const ExpriyDateField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Expiry Date",
        hintText: "MM/YY",
      ),
      // inputFormatters: [
      //   FilteringTextInputFormatter.digitsOnly,
      //   LengthLimitingTextInputFormatter(4),
      //   CardDateFormatter(),
      // ],
      // controller: expiryController,
      keyboardType: TextInputType.datetime,
      // validator: validateExpiryDate,
      onChanged: (String value) {
        // List<int> expiryDate = getCardExpiryDate(value);
        // _creditCard.month = expiryDate.isNotEmpty ? expiryDate[0] : 0;
        // _creditCard.year = expiryDate.length > 1 ? expiryDate[1] : 0;
      },
    );
  }
}
