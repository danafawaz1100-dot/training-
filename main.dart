import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'screens/service_screens/food_surplus_screen.dart';
import 'screens/service_screens/meat_distribution_screen.dart';
import 'screens/service_screens/hot_meals_screen.dart';
import 'screens/service_screens/water_distribution_screen.dart';
import 'screens/service_screens/food_baskets_screen.dart';
import 'screens/utility_screens/contact_screen.dart';
import 'screens/utility_screens/share_app_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(const CharityApp());
}

class CharityApp extends StatefulWidget {
  const CharityApp({super.key});

  @override
  State<CharityApp> createState() => _CharityAppState();

  // ميثود للوصول إلى ستايت التطبيق من أي مكان
  static _CharityAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_CharityAppState>();
}

class _CharityAppState extends State<CharityApp> {
  Locale _locale = const Locale('ar'); // اللغة الافتراضية

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'الجمعية الخيرية',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Cairo',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainScreen(),
      routes: {
        '/foodSurplus': (context) => const FoodSurplusScreen(),
        '/breakfast': (context) => const FoodSurplusScreen(),
        '/meatDistribution': (context) => const MeatDistributionScreen(),
        '/hotMeals': (context) => const HotMealsScreen(),
        '/waterDistribution': (context) => const WaterDistributionScreen(),
        '/foodBaskets': (context) => const FoodBasketsScreen(),
        '/contact': (context) => const ContactScreen(),
        '/share': (context) => const ShareAppScreen(),
      },
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en'), Locale('ar')],
      locale: _locale, // 👈 اللغة الديناميكية
    );
  }
}
