// lib/screens/service_screens/meat_distribution_screen.dart
import 'package:flutter/material.dart';

class MeatDistributionScreen extends StatelessWidget {
  const MeatDistributionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('توزيع اللحوم الطازجة'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'توزيع اللحوم الطازجة على المحتاجين',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/meat.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'نقوم بذبح وتوزيع اللحوم الطازجة على الأسر المحتاجة في المناسبات والأعياد.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
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
