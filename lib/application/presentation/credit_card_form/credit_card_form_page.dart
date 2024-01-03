import 'package:cardwiz_app/application/presentation/credit_card_form/bloc/credit_card_form_bloc.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/bloc/credit_card_form_state.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/duplicate_card_message.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/pop_up_menu.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/success_message.dart';
import 'package:flutter/material.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/card_cvv_field.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/card_number_field.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/country_dropdown.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/expiry_date_field.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/name_on_card_field.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/scan_card_button.dart';
import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/submit_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreditCardFormWrapperProvider extends StatelessWidget {
  const CreditCardFormWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreditCardFormBloc(),
      child: const CreditCardFormPage(),
    );
  }
}

class CreditCardFormPage extends StatelessWidget {
  const CreditCardFormPage({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: BlocBuilder<CreditCardFormBloc, CreditCardFormState>(
            builder: (context, state) {
              if (state is CreditCardFormStateInitial) {
                return const Column(
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
                );
              } else if (state is CreditCardFormStateLoading) {
                return const AlertDialog(
                  title: Text("Validating card Details, please wait"),
                  content: Center(child: CircularProgressIndicator()),
                );
              } else if (state is CreditCardFormStateSuccess) {
                return const SuccessMessage();
              } else if (state is CreditCardFromStateDuplicate) {
                return const DuplicateCardMessage();
              }
              return const CreditCardFormPage();
            },
          ),
        ),
      ),
    );
  }
}
