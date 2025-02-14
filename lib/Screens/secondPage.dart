import 'package:app_task3/widgets/buttomNavigationBarWidget.dart';
import 'package:app_task3/widgets/categoryItem.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PolloStorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pollo',
          style: TextStyle(color: Colors.purple, fontSize: 30),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              size: 25,
              Icons.menu,
              shadows: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: Offset(0, 10),
                  blurRadius: 10,
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Welcome to\nPollo Store',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Your All-in-One Vet Store',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: const EdgeInsets.all(16.0),
              children: const [
                CategoryItemWidget(
                    icon: FontAwesomeIcons.userMd, label: 'Veterinarians'),
                CategoryItemWidget(
                    icon: FontAwesomeIcons.pills, label: 'Pharmaceutical'),
                CategoryItemWidget(
                    icon: FontAwesomeIcons.hospital, label: 'Vet Pharmacy'),
                CategoryItemWidget(
                    icon: FontAwesomeIcons.shekel, label: 'Sheep'),
                CategoryItemWidget(icon: FontAwesomeIcons.cow, label: 'Cattle'),
                CategoryItemWidget(
                    icon: FontAwesomeIcons.mugHot, label: 'Milk'),
                CategoryItemWidget(
                    icon: FontAwesomeIcons.drumstickBite, label: 'Chickens'),
                CategoryItemWidget(icon: FontAwesomeIcons.egg, label: 'Eggs'),
                CategoryItemWidget(icon: FontAwesomeIcons.cat, label: 'Pets'),
                CategoryItemWidget(icon: FontAwesomeIcons.fish, label: 'Fish'),
                CategoryItemWidget(icon: FontAwesomeIcons.dice, label: 'Ducks'),
                CategoryItemWidget(icon: FontAwesomeIcons.home, label: 'Farms'),
                CategoryItemWidget(
                    icon: FontAwesomeIcons.carrot, label: 'Feeding'),
                CategoryItemWidget(
                    icon: FontAwesomeIcons.dna, label: 'Hatching Labs'),
                CategoryItemWidget(
                    icon: FontAwesomeIcons.industry,
                    label: 'Slaughtering Houses'),
                CategoryItemWidget(
                    icon: FontAwesomeIcons.truck, label: 'Transportation'),
                CategoryItemWidget(
                    icon: FontAwesomeIcons.toolbox,
                    label: 'Equipment and Tools'),
                CategoryItemWidget(
                    icon: FontAwesomeIcons.briefcase, label: 'Jobs'),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        shape: const CircleBorder(),
        onPressed: () {},
        backgroundColor: Colors.white,
        child: const Text(
          "p",
          style: TextStyle(
              color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
