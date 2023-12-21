import 'package:cardwiz_app/application/presentation/credit_card_form/widgets/country_dropdown.dart';
import 'package:flutter/material.dart';

class BannedCountries extends StatelessWidget {
  const BannedCountries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Banned Countries")),
      body: const CountryDropdown(),
    );
  }
}
