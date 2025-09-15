import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final int currentIndex;
  final Function(int) onIndexChanged;

  const CustomDrawer({
    super.key,
    required this.currentIndex,
    required this.onIndexChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.teal[700],
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.teal[700],
                      size: 40,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'الجمعية الخيرية',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'نعمل من أجل الخير',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.teal),
            title: Text('الصفحة الرئيسية'),
            onTap: () {
              Navigator.pop(context);
              onIndexChanged(0);
            },
          ),
          ListTile(
            leading: Icon(Icons.volunteer_activism, color: Colors.teal),
            title: Text('التبرعات'),
            onTap: () {
              Navigator.pop(context);
              onIndexChanged(1);
            },
          ),
          ListTile(
            leading: Icon(Icons.assignment, color: Colors.teal),
            title: Text('برامجنا'),
            onTap: () {
              Navigator.pop(context);
              onIndexChanged(2);
            },
          ),
          ListTile(
            leading: Icon(Icons.campaign, color: Colors.teal),
            title: Text('الحملات الجارية'),
            onTap: () {
              Navigator.pop(context);
              onIndexChanged(2);
            },
          ),
          ListTile(
            leading: Icon(Icons.history, color: Colors.teal),
            title: Text('سجل تبرعاتي'),
            onTap: () {
              Navigator.pop(context);
              onIndexChanged(2);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info, color: Colors.teal),
            title: Text('عن الجمعية'),
            onTap: () {
              Navigator.pop(context);
              onIndexChanged(3);
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_phone, color: Colors.teal),
            title: Text('اتصل بنا'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/contact');
            },
          ),
          ListTile(
            leading: Icon(Icons.share, color: Colors.teal),
            title: Text('شارك التطبيق'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/share');
            },
          ),
        ],
      ),
    );
  }
}
