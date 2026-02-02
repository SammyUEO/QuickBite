import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../common/app_strings.dart';

/// Widget pentru badge-urile cu informații (categorie, dificultate, tip masă, vegetarian)
class FoodInfoBadges extends StatelessWidget {
  final FoodItem food;

  const FoodInfoBadges({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: [
        _InfoBadge(
          icon: Icons.public,
          label: food.category,
          color: Colors.blue,
        ),
        _InfoBadge(
          icon: Icons.restaurant,
          label: food.mealType.displayName,
          color: Colors.purple,
        ),
        _InfoBadge(
          icon: Icons.signal_cellular_alt,
          label: food.difficulty,
          color: Colors.orange,
        ),
        if (food.isVegetarian)
          const _InfoBadge(
            icon: Icons.eco,
            label: AppStrings.labelVegetarian,
            color: Colors.green,
          ),
      ],
    );
  }
}

class _InfoBadge extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _InfoBadge({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color, width: 1.5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: color),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
