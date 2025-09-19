import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';

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
                    AppLocalizations.of(context)!.appTitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    AppLocalizations.of(context)!.weworkforgoodness,
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.teal),
            title: Text(AppLocalizations.of(context)!.home),
            onTap: () {
              Navigator.pop(context);
              onIndexChanged(0);
            },
          ),
          ListTile(
            leading: Icon(Icons.browse_gallery, color: Colors.teal),
            title: Text(AppLocalizations.of(context)!.gallery),
            onTap: () {
              Navigator.pop(context);
              onIndexChanged(0);
            },
          ),
          ListTile(
            leading: Icon(Icons.volunteer_activism, color: Colors.teal),
            title: Text(AppLocalizations.of(context)!.dontations),
            onTap: () {
              Navigator.pop(context);
              onIndexChanged(1);
            },
          ),
          ListTile(
            leading: Icon(Icons.assignment, color: Colors.teal),
            title: Text(AppLocalizations.of(context)!.programs),
            onTap: () {
              Navigator.pop(context);
              onIndexChanged(2);
            },
          ),
          ListTile(
            leading: Icon(Icons.campaign, color: Colors.teal),
            title: Text(AppLocalizations.of(context)!.currentampaigns),
            onTap: () {
              Navigator.pop(context);
              onIndexChanged(2);
            },
          ),
          ListTile(
            leading: Icon(Icons.history, color: Colors.teal),
            title: Text(AppLocalizations.of(context)!.mydonationrecord),
            onTap: () {
              Navigator.pop(context);
              onIndexChanged(2);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info, color: Colors.teal),
            title: Text(AppLocalizations.of(context)!.aboutcharity),
            onTap: () {
              Navigator.pop(context);
              onIndexChanged(3);
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_phone, color: Colors.teal),
            title: Text(AppLocalizations.of(context)!.callus),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/contact');
            },
          ),
          ListTile(
            leading: Icon(Icons.share, color: Colors.teal),
            title: Text(AppLocalizations.of(context)!.shareapp),
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
