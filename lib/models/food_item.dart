/// Tipuri de mese
enum MealType {
  breakfast('Mic Dejun'),
  lunch('Prânz'),
  dinner('Cină'),
  dessert('Desert'),
  snack('Gustare');

  final String displayName;
  const MealType(this.displayName);
}

/// Model pentru un preparat culinar
class FoodItem {
  final String name;
  final String description;
  final String imageUrl; // poate fi asset local sau URL
  final String category; // țara/originea (Italia, Mexic, etc.)
  final int prepTime; // în minute
  final String difficulty;
  final List<String> ingredients;
  final MealType mealType; // mic dejun, prânz, cină, desert
  final bool isVegetarian; // pentru filtrare vegetariană
  final List<CookingStep> steps; // pașii de preparare

  const FoodItem({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.category,
    required this.prepTime,
    required this.difficulty,
    required this.ingredients,
    required this.mealType,
    this.isVegetarian = false,
    this.steps = const [],
  });
}

/// Model pentru un pas de preparare
class CookingStep {
  final int stepNumber;
  final String title;
  final String description;
  final int? timerMinutes; // dacă pasul necesită timer (ex: coacere 30 min)

  const CookingStep({
    required this.stepNumber,
    required this.title,
    required this.description,
    this.timerMinutes,
  });
}
