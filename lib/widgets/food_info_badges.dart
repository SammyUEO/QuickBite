import 'package:flutter/material.dart';
import '../models/food_item.dart';

/// Widget pentru afișarea badge-urilor cu categoria și dificultatea
class FoodInfoBadges extends StatelessWidget {
  final FoodItem food;

  const FoodInfoBadges({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Categoria
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.orange[100],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              const Icon(Icons.category, size: 18, color: Colors.orange),
              const SizedBox(width: 6),
              Text(
                food.category,
                style: const TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),

        // Dificultatea
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: _getDifficultyColor(food.difficulty).withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Icon(
                Icons.bar_chart,
                size: 18,
                color: _getDifficultyColor(food.difficulty),
              ),
              const SizedBox(width: 6),
              Text(
                food.difficulty,
                style: TextStyle(
                  color: _getDifficultyColor(food.difficulty),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Color _getDifficultyColor(String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'ușor':
      case 'usor':
        return Colors.green;
      case 'mediu':
        return Colors.orange;
      case 'dificil':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
