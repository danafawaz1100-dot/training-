// lib/screens/service_screens/food_surplus_screen.dart
import 'package:flutter/material.dart';

class FoodSurplusScreen extends StatelessWidget {
  const FoodSurplusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('فاض من الطعام'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'توزيع فائض الطعام على المحتاجين',
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
              'نقوم بجمع فائض الطعام من المطاعم والفنادق والأفراح وتوزيعه على المحتاجين والأسر المعوزة بطريقة صحية وآمنة.',
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
              child: Text('التبرع لهذا المشروع'),
            ),
          ],
        ),
      ),
    );
  }
}
