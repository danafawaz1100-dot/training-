// lib/screens/service_screens/food_surplus_screen.dart
import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';

class FoodSurplusScreen extends StatelessWidget {
  const FoodSurplusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('فائض من الطعام'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.distributingfooddescroption,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/food_donation.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)!.surplusfooddescription,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),

              child: Text(AppLocalizations.of(context)!.donateforproject),
            ),
          ],
        ),
      ),
    );
  }
}
