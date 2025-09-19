import 'package:flutter/material.dart';
import '../models/charity_service.dart';
import '../widgets/service_card.dart';
import '../../l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> stats = [
      {'value': '5,247', 'label': AppLocalizations.of(context)!.beneficiary},
      {'value': '1,258', 'label': AppLocalizations.of(context)!.donor},
      {'value': '763', 'label': AppLocalizations.of(context)!.volunteer},
      {'value': '24', 'label': AppLocalizations.of(context)!.program},
    ];

    final List<CharityService> services = [
      CharityService(
        title: AppLocalizations.of(context)!.surplusfood,

        description: AppLocalizations.of(context)!.distributingfooddescroption,
        icon: Icons.restaurant,
        color: Colors.orange,
        image: 'assets/food.png',
        route: '/foodSurplus',
      ),
      CharityService(
        title: AppLocalizations.of(context)!.iftarforafastingperson,
        description: AppLocalizations.of(context)!.providinggrandmosque,
        icon: Icons.mosque,
        color: Colors.purple,
        image: 'assets/breakfast.png',
        route: '/breakfast',
      ),
      CharityService(
        title: AppLocalizations.of(context)!.freshmeat,
        description: AppLocalizations.of(
          context,
        )!.distributingmeatneedyfamilies,
        icon: Icons.set_meal,
        color: Colors.red,
        image: 'assets/meat.png',
        route: '/meatDistribution',
      ),
      CharityService(
        title: AppLocalizations.of(context)!.hotmeals,
        description: AppLocalizations.of(context)!.providinghotmealsneed,
        icon: Icons.rice_bowl,
        color: Colors.deepOrange,
        image: 'assets/food.png',
        route: '/hotMeals',
      ),
      CharityService(
        title: AppLocalizations.of(context)!.waterdistribution,
        description: AppLocalizations.of(context)!.providingdrinkingwaterneed,
        icon: Icons.local_drink,
        color: Colors.blue,
        image: 'assets/water.png',
        route: '/waterDistribution',
      ),
      CharityService(
        title: AppLocalizations.of(context)!.foodbaskets,

        description: AppLocalizations.of(
          context,
        )!.distributionbasketsnecessities,
        icon: Icons.shopping_basket,
        color: Colors.green,
        image: 'assets/basket.png',
        route: '/foodBaskets',
      ),
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.teal[700]!, Colors.teal[500]!],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: -50,
                    top: -20,
                    child: Icon(
                      Icons.favorite,
                      size: 150,
                      color: Colors.white.withOpacity(0.1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.appmaindescription,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context)!.appsubdescription,
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.teal[700],
                            padding: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            elevation: 5,
                          ),
                          child: Text(
                            AppLocalizations.of(context)!.donatenow,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Stats Section
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: stats.map((stat) {
                  return Column(
                    children: [
                      Text(
                        stat['value'],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal[700],
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        stat['label'],
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),

            // Services Title
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.ourservices,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      AppLocalizations.of(context)!.showall,
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                ],
              ),
            ),

            // Services Grid
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 0.85,
              ),
              itemCount: services.length,
              padding: EdgeInsets.all(15),
              itemBuilder: (context, index) {
                return ServiceCard(service: services[index]);
              },
            ),

            // Current Campaigns
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
              child: Text(
                AppLocalizations.of(context)!.currentampaigns,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 15),
                children: [
                  _buildCampaignCard(
                    context,
                    AppLocalizations.of(context)!.iftarforafastingperson,
                    AppLocalizations.of(context)!.providingiftarmeals,
                    75,
                    Colors.orange,
                  ),
                  _buildCampaignCard(
                    context,
                    AppLocalizations.of(context)!.waterdistribution,
                    AppLocalizations.of(context)!.distributebottlesofwater,
                    60,
                    Colors.blue,
                  ),
                  _buildCampaignCard(
                    context,
                    AppLocalizations.of(context)!.foodbaskets,
                    AppLocalizations.of(context)!.providingiftarmeals,
                    45,
                    Colors.green,
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCampaignCard(
    BuildContext context,
    String title,
    String description,
    int progress,
    Color color,
  ) {
    return Container(
      width: 280,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            SizedBox(height: 5),
            Text(
              description,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            SizedBox(height: 15),
            LinearProgressIndicator(
              value: progress / 100,
              backgroundColor: color.withOpacity(0.2),
              valueColor: AlwaysStoppedAnimation<Color>(color),
              borderRadius: BorderRadius.circular(10),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$progress%',
                  style: TextStyle(
                    fontSize: 12,
                    color: color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  AppLocalizations.of(context)!.donatenow,
                  style: TextStyle(
                    fontSize: 12,
                    color: color,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
