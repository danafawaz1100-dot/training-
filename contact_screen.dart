import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('اتصل بنا')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'معلومات الاتصال',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('الهاتف'),
              subtitle: Text('+966 12 345 6789'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('البريد الإلكتروني'),
              subtitle: Text('info@charit111y.org'),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('العنوان'),
              subtitle: Text('مكة المكرمة - المملكة العربية السعودية'),
            ),
            SizedBox(height: 20),
            Text(
              'وسائل التواصل الاجتماعي',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.facebook),
                  onPressed: () {},
                  iconSize: 40,
                ),
                IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {},
                  iconSize: 40,
                ),
                IconButton(
                  icon: Icon(Icons.message),
                  onPressed: () {},
                  iconSize: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
