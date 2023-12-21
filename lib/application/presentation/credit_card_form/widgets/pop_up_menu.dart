import 'package:cardwiz_app/application/presentation/banned_countries/banned_countries_page.dart';
import 'package:cardwiz_app/application/presentation/saved_credit_cards/saved_credit_cards_page.dart';
import 'package:flutter/material.dart';

class CustomPopupMenuButton extends StatelessWidget {
  const CustomPopupMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => PopupMenuButton<String>(
        itemBuilder: (BuildContext context) {
          return [
            const PopupMenuItem<String>(
              value: "banned_countries",
              child: Text("Banned Countries"),
            ),
            const PopupMenuItem<String>(
              value: "saved_credit_cards",
              child: Text("Saved Cards"),
            ),
          ];
        },
        onSelected: (String value) {
          if (value == "banned_countries") {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (BuildContext context) => const BannedCountries()),
            );
          } else if (value == "saved_credit_cards") {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (BuildContext context) => const SavedCreditCards()),
            );
          }
        },
      ),
    );
  }
}
