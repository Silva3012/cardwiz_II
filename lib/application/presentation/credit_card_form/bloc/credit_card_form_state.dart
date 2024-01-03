import 'package:equatable/equatable.dart';

abstract class CreditCardFormState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CreditCardFormStateInitial extends CreditCardFormState {}

class CreditCardFormStateLoading extends CreditCardFormState {}

class CreditCardFormStateSuccess extends CreditCardFormState {
  final UserCreditCard creditCard;

  CreditCardFormStateSuccess({required this.creditCard});

  @override
  List<Object?> get props => [creditCard];
}

class UserCreditCard {
  late String cardName;
}

UserCreditCard userCreditCard = UserCreditCard();

class CreditCardFormStateError extends CreditCardFormState {}

class CreditCardFromStateDuplicate extends CreditCardFormState {}
