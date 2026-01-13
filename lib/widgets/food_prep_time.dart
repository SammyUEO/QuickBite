import 'package:flutter/material.dart';

/// Widget pentru afișarea timpului de preparare
class FoodPrepTime extends StatelessWidget {
  final int prepTime;

  const FoodPrepTime({super.key, required this.prepTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue[200]!),
      ),
      child: Row(
        children: [
          const Icon(Icons.timer, color: Colors.blue, size: 32),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Timp de preparare',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Text(
                '$prepTime minute',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
