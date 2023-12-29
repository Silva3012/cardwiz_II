import 'package:cardwiz_app/application/presentation/credit_card_form/bloc/credit_card_form_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'credit_card_form_event.dart';

class CreditCardFormBloc
    extends Bloc<CreditCardFormEvent, CreditCardFormState> {
  CreditCardFormBloc() : super(CreditCardFormStateInitial()) {
    // Execute calling OnSubmit once the button is pressed
    // Show loading for 3 seconds
    // Either print successful or throw an error for now
  }
}
