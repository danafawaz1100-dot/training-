import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'donation_screen.dart';
import 'programs_screen.dart';
import 'about_screen.dart';
import '../widgets/custom_drawer.dart';
// import 'service_screens/food_surplus_screen.dart';
// import 'service_screens/breakfast_screen.dart';
// import 'service_screens/meat_distribution_screen.dart';
// import 'service_screens/hot_meals_screen.dart';
// import 'service_screens/water_distribution_screen.dart';
// import 'service_screens/food_baskets_screen.dart';
// import 'utility_screens/contact_screen.dart';
// import 'utility_screens/share_app_screen.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import '../../l10n/app_localizations.dart';
import '../../main.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    DonationScreen(),
    ProgramsScreen(),
    AboutScreen(),
  ];

  // void _navigateToScreen(Widget screen) {
  //   Navigator.pop(context); // إغلاق الدراور
  //   Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('الجمعية الخيرية')
        title: Text(AppLocalizations.of(context)!.home),

        centerTitle: true,
        backgroundColor: Colors.teal[700],
        elevation: 4,

        actions: [
          PopupMenuButton<String>(
            icon: Icon(Icons.language),
            onSelected: (String value) {
              if (value == "ar") {
                CharityApp.of(context)?.setLocale(const Locale('ar'));
              } else {
                CharityApp.of(context)?.setLocale(const Locale('en'));
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(value: "ar", child: Text("العربية")),
              PopupMenuItem(value: "en", child: Text("English")),
            ],
          ),
        ],
      ),
      drawer: CustomDrawer(
        currentIndex: _currentIndex,
        onIndexChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        // onContactPressed: () => _navigateToScreen(ContactScreen()),
        // onSharePressed: () => _navigateToScreen(ShareAppScreen()),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.teal[700],
          unselectedItemColor: Colors.grey[600],
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: AppLocalizations.of(context)!.home,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.volunteer_activism),
              label: AppLocalizations.of(context)!.donate,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: AppLocalizations.of(context)!.programs,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: AppLocalizations.of(context)!.about,
            ),
          ],
        ),
      ),
    );
  }
}
