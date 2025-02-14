import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTabItem(
              icon: Icons.home, isSelected: true), 
          _buildTabItem(icon: Icons.favorite, isSelected: false),
          const SizedBox(width: 48), 
          _buildTabItem(icon: Icons.add, isSelected: false),
          _buildTabItem(icon: Icons.person, isSelected: false),
        ],
      ),
    );
  }

  Widget _buildTabItem({required IconData icon, required bool isSelected}) {
    return IconButton(
      icon: Icon(
        icon,
        color: isSelected ? Colors.purple : Colors.grey,
      ),
      onPressed: () {
       
      },
    );
  }
}
