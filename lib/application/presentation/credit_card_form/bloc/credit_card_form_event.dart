import 'package:equatable/equatable.dart';

abstract class CreditCardFormEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class OnSubmit extends CreditCardFormEvent {}

class OnScanCard extends CreditCardFormEvent {}

class OnSavedCards extends CreditCardFormEvent {}

class OnBannedCountries extends CreditCardFormEvent {}
