import 'package:flutter/material.dart';
import '../common/app_strings.dart';
import '../common/app_theme.dart';
import '../models/food_item.dart';
import '../screens/cooking_steps_screen.dart';
import '../utils/navigation_helper.dart';

/// Widget pentru butonul de acțiune
class FoodActionButton extends StatelessWidget {
  final FoodItem food;

  const FoodActionButton({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton.icon(
        onPressed: () {
          if (food.steps.isNotEmpty) {
            // Navighează către ecranul cu pași
            NavigationHelper.navigateTo(
              context,
              CookingStepsScreen(food: food),
            );
          } else {
            // Mesaj dacă nu sunt pași disponibili
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  'Pașii de preparare nu sunt disponibili momentan.',
                ),
                backgroundColor: Colors.orange,
              ),
            );
          }
        },
        icon: const Icon(Icons.restaurant_menu, size: 24),
        label: const Text(
          AppStrings.buttonStartCooking,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppTheme.buttonBorderRadius),
          ),
          elevation: AppTheme.cardElevation,
        ),
      ),
    );
  }
}
