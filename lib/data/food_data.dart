import '../models/food_item.dart';
import 'breakfast_foods.dart';
import 'lunch_foods.dart';
import 'dinner_foods.dart';
import 'dessert_foods.dart';

/// Clasă centralizată pentru gestionarea tuturor rețetelor
/// Importă și combină rețetele din fișiere separate
class FoodData {
  /// Lista completă cu toate rețetele din aplicație
  static const List<FoodItem> allFoods = [
    ...BreakfastFoods.items,
    ...LunchFoods.items,
    ...DinnerFoods.items,
    ...DessertFoods.items,
  ];

  /// Filtrează rețetele după tipul de masă
  static List<FoodItem> getByMealType(MealType type) {
    return allFoods.where((food) => food.mealType == type).toList();
  }

  /// Filtrează rețetele după țară de origine
  static List<FoodItem> getByCountry(String country) {
    return allFoods.where((food) => food.category == country).toList();
  }

  /// Returnează doar rețetele vegetariene
  static List<FoodItem> getVegetarianOnly() {
    return allFoods.where((food) => food.isVegetarian).toList();
  }

  /// Returnează lista tuturor țărilor disponibile
  static List<String> getAllCountries() {
    return allFoods.map((food) => food.category).toSet().toList()..sort();
  }
}
