import 'package:flutter/material.dart';

class ShareAppScreen extends StatelessWidget {
  const ShareAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('شارك التطبيق')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.share, size: 80, color: Colors.teal),
            SizedBox(height: 20),
            Text(
              'شارك تطبيق الجمعية الخيرية',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'ساعدنا في نشر الخير بتسجيل تطبيقنا مع أصدقائك وعائلتك',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.share),
              label: Text('مشاركة التطبيق'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
