import 'package:flutter/material.dart';
import '../models/charity_service.dart';

class ServiceCard extends StatelessWidget {
  final CharityService service;

  const ServiceCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, service.route);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                service.color.withOpacity(0.1),
                service.color.withOpacity(0.05),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: service.color.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(service.icon, color: service.color, size: 30),
                ),
                SizedBox(height: 15),
                Text(
                  service.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  service.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    height: 1.4,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, service.route);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: service.color,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text('تبرع', style: TextStyle(fontSize: 12)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
