import 'package:flutter/material.dart';
import '../data/food_data.dart';
import '../widgets/food_card.dart';
import 'food_details_screen.dart';

/// Ecranul cu toate preparatele - StatelessWidget
class AllFoodsScreen extends StatelessWidget {
  const AllFoodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: const Text(
          'Toate Rețetele',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: FoodData.allFoods.length + 1, // +1 pentru header
            itemBuilder: (context, index) {
              // Primul item este headerul
              if (index == 0) {
                return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  color: Colors.orange,
                  child: Column(
                    children: [
                      Text(
                        '${FoodData.allFoods.length} rețete delicioase',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Selectează-ți favoritul!',
                        style: TextStyle(fontSize: 14, color: Colors.white70),
                      ),
                    ],
                  ),
                );
              }

              // Restul itemelor sunt cardurile cu mâncare
              final food = FoodData.allFoods[index - 1];
              return Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: FoodCard(
                  food: food,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoodDetailsScreen(food: food),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
