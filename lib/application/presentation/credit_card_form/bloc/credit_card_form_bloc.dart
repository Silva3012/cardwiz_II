import 'package:cardwiz_app/application/presentation/credit_card_form/bloc/credit_card_form_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'credit_card_form_event.dart';

class CreditCardFormBloc
    extends Bloc<CreditCardFormEvent, CreditCardFormState> {
  CreditCardFormBloc() : super(CreditCardFormStateInitial()) {
    // Execute calling OnSubmit once the button is pressed
    on<OnSubmitEvent>((event, emit) async {
      emit(CreditCardFormStateLoading());
      debugPrint("Validating card details please wait");
      // Show loading for 3 seconds
      await Future.delayed(const Duration(seconds: 3), () {});
      // Either print successful or throw an error for now
      debugPrint("Card details have been validated successfully");
      emit(CreditCardFormStateSuccess(creditCard: userCreditCard));
    });
  }
}
