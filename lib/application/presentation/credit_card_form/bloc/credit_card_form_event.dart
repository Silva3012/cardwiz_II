import 'package:equatable/equatable.dart';

abstract class CreditCardFormEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class OnSubmitEvent extends CreditCardFormEvent {}

class OnScanCardEvent extends CreditCardFormEvent {}

class OnSavedCardsEvent extends CreditCardFormEvent {}

class OnBannedCountriesEvent extends CreditCardFormEvent {}
