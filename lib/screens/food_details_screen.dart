import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../widgets/food_info_badges.dart';
import '../widgets/food_prep_time.dart';
import '../widgets/food_description.dart';
import '../widgets/food_ingredients_list.dart';
import '../widgets/food_action_button.dart';

/// Ecranul cu detalii complete despre un preparat - StatelessWidget
class FoodDetailsScreen extends StatelessWidget {
  final FoodItem food;

  const FoodDetailsScreen({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text(
          food.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: CustomScrollView(
            slivers: [
              // Imaginea mare cu spațiu și colțuri rotunjite
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Hero(
                    tag: 'food_${food.name}',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        food.imageUrl,
                        height: 400,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            height: 400,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.restaurant,
                              size: 100,
                              color: Colors.grey,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),

              // Conținutul detaliilor
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Badges cu informații
                      FoodInfoBadges(food: food),
                      const SizedBox(height: 20),

                      // Timp de preparare
                      FoodPrepTime(prepTime: food.prepTime),
                      const SizedBox(height: 24),

                      // Descrierea
                      FoodDescription(description: food.description),
                      const SizedBox(height: 24),

                      // Ingredientele
                      FoodIngredientsList(ingredients: food.ingredients),
                      const SizedBox(height: 32),

                      // Buton de acțiune
                      FoodActionButton(foodName: food.name),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
