import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';

class WaterDistributionScreen extends StatelessWidget {
  const WaterDistributionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.waterdistribution),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.providingdrinkingwaterneed,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/water.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)!.waterdistribituindescription,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
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
