import 'package:flutter/material.dart';

/// Widget pentru butonul de acțiune
class FoodActionButton extends StatelessWidget {
  final String foodName;

  const FoodActionButton({super.key, required this.foodName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton.icon(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Poftă bună cu $foodName! 🍽️'),
              backgroundColor: Colors.green,
              behavior: SnackBarBehavior.floating,
            ),
          );
        },
        icon: const Icon(Icons.restaurant_menu, size: 24),
        label: const Text(
          'Gătește această rețetă!',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 3,
        ),
      ),
    );
  }
}
