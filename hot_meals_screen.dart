import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';

class HotMealsScreen extends StatelessWidget {
  const HotMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('توزيع الوجبات الساخنة'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.providinghotmealsneed,

              // 'توزيع الوجبات الساخنة للمحتاجين',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/food.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)!.providinghotmealsneeddescription,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),

              child: Text(AppLocalizations.of(context)!.donatenow),
            ),
          ],
        ),
      ),
    );
  }
}
