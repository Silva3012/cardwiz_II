import 'package:equatable/equatable.dart';

abstract class CreditCardFormState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CreditCardFormStateInitial extends CreditCardFormState {}

class CreditCardFormStateLoading extends CreditCardFormState {}

class CreditCardFormStateSuccess extends CreditCardFormState {}

class CreditCardFormStateError extends CreditCardFormState {}
