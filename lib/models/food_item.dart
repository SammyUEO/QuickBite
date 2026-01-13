/// Model pentru un preparat culinar
class FoodItem {
  final String name;
  final String description;
  final String imageUrl;
  final String category;
  final int prepTime; // în minute
  final String difficulty;
  final List<String> ingredients;

  const FoodItem({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.category,
    required this.prepTime,
    required this.difficulty,
    required this.ingredients,
  });
}
