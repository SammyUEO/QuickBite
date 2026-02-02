import 'package:flutter/material.dart';
import '../common/app_strings.dart';

/// Widget pentru afișarea descrierii preparatului
class FoodDescription extends StatelessWidget {
  final String description;

  const FoodDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppStrings.sectionDescription,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Text(
          description,
          style: TextStyle(fontSize: 16, color: Colors.grey[800], height: 1.5),
        ),
      ],
    );
  }
}
