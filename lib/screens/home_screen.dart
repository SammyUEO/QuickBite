import 'package:flutter/material.dart';
import 'dart:math';
import '../data/food_data.dart';
import '../models/food_item.dart';
import '../widgets/food_card.dart';
import '../widgets/active_timers_overlay.dart';
import '../common/app_strings.dart';
import '../common/app_theme.dart';
import 'food_details_screen.dart';
import 'all_foods_screen.dart';
import 'cooking_steps_screen.dart';

/// Ecranul principal - StatefulWidget pentru a gestiona starea
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  FoodItem? selectedFood;
  final Random random = Random();
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _pickRandomFood() {
    setState(() {
      selectedFood =
          FoodData.allFoods[random.nextInt(FoodData.allFoods.length)];
    });

    // Animație la apăsare
    _animationController.forward().then((_) {
      _animationController.reverse();
    });
  }

  void _navigateToDetails() {
    if (selectedFood != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FoodDetailsScreen(food: selectedFood!),
        ),
      );
    }
  }

  void _navigateToAllFoods() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AllFoodsScreen()),
    );
  }

  void _navigateToRecipeStep(FoodItem food, int stepIndex) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            CookingStepsScreen(food: food, initialStepIndex: stepIndex),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Iconița verde cu furculița
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.restaurant,
                color: AppTheme.primaryColor,
                size: 28,
              ),
            ),
            const SizedBox(width: 12),
            // Textul QuickBite cu sloganul
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      'Quick',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Bite',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Decide less. Eat better.',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: AppTheme.primaryColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.restaurant_menu),
            onPressed: _navigateToAllFoods,
            tooltip: AppStrings.tooltipViewAllRecipes,
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Titlu și subtitlu - mai compact
                              const Text(
                                AppStrings.homeMainQuestion,
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: AppTheme.textPrimary,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                AppStrings.homeSubtitle,
                                style: AppTheme.subtitleMedium,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 20),

                              // Card-ul cu preparatul selectat
                              if (selectedFood != null) ...[
                                FoodCard(
                                  food: selectedFood!,
                                  onTap: _navigateToDetails,
                                ),
                              ] else ...[
                                // Placeholder când nu e nimic selectat - mai mic
                                Container(
                                  height: 240,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 10,
                                        offset: const Offset(0, 5),
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.restaurant,
                                          size: 60,
                                          color: Colors.grey[400],
                                        ),
                                        const SizedBox(height: 16),
                                        Text(
                                          'Apasă butonul de mai jos\npentru o sugestie!',
                                          style: AppTheme.subtitleMedium,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Butonul principal "Alege pentru mine"
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ScaleTransition(
                        scale: _scaleAnimation,
                        child: SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: _pickRandomFood,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme.primaryColor,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: AppTheme.cardElevation,
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.casino, size: 28),
                                SizedBox(width: 12),
                                Text(
                                  AppStrings.buttonPickFood,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Overlay pentru timerele active
          ActiveTimersOverlay(
            allFoods: FoodData.allFoods,
            onTimerTap: _navigateToRecipeStep,
          ),
        ],
      ),
    );
  }
}
