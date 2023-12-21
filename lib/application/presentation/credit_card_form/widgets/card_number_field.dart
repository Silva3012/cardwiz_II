import 'package:flutter/material.dart';

class CardNumberField extends StatelessWidget {
  const CardNumberField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Card Number",
        hintText: "Enter your card number",
      ),
      // inputFormatters: [
      //   CreditCardNumberFormatter(
      //     sample: "xxxx-xxxx-xxxx-xxxx",
      //     separator: "-",
      //   ),
      // ],
      // controller: numberController,
      keyboardType: TextInputType.number,
      // You can use the onChanged callback for validation if needed
      // validator: validateCardNumber,
      onChanged: (String value) {
        // TODO: save into object with the cleaned number function
        // _creditCard.number = cleanedNumber(value);
      },
    );
  }
}
