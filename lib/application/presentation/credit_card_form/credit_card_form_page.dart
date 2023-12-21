import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/card_cvv_field.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/card_number_field.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/country_dropdown.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/expiry_date_field.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/name_on_card_field.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/scan_card_button.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/submit_button.dart';

class CreditCardForm extends StatelessWidget {
  const CreditCardForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CardWiz",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [CustomPopupMenuButton()],
      ),
      body: const Padding(
        padding: EdgeInsets.all(9.0),
        child: Column(
          children: <Widget>[
            NameOnCardField(),
            CardNumberField(),
            Row(
              children: [
                Expanded(
                  child: ExpriyDateField(),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: CardCvv(),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CountryDropdown(),
            SizedBox(
              height: 30,
            ),
            SubmitButton(),
            SizedBox(
              height: 30,
            ),
            ScanCardButton()
          ],
        ),
      ),
    );
  }
}
