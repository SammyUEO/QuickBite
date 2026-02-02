/// Conține toate textele utilizate în aplicație pentru a evita hardcoding-ul
class AppStrings {
  // Private constructor pentru a preveni instanțierea clasei
  AppStrings._();

  // Titluri generale
  static const String appTitle = 'QuickBite';
  static const String appTitleWithEmoji = 'QuickBite 🍕';

  // Home Screen
  static const String homeMainQuestion = 'Ce mănânc azi?';
  static const String homeSubtitle = 'Lasă aplicația să decidă pentru tine! 🎲';
  static const String buttonPickFood = 'Alege un preparat!';
  static const String buttonViewDetails = 'Vezi Detalii Complete';
  static const String buttonTryAnother = 'Încearcă alt preparat';
  static const String tooltipViewAllRecipes = 'Vezi toate rețetele';

  // All Foods Screen
  static const String allFoodsTitle = 'Toate Rețetele';
  static const String allFoodsSubtitle =
      'Descoperă toate preparatele disponibile';
  static const String noFoodsFound = 'Nu există preparate disponibile.';

  // Food Details Screen
  static const String detailsTitle = 'Detalii Preparat';
  static const String sectionIngredients = 'Ingrediente';
  static const String sectionDescription = 'Descriere';
  static const String buttonStartCooking = 'Începe să Gătești!';
  static const String buttonAddToFavorites = 'Adaugă la Favorite';

  // Food Info Labels
  static const String labelPrepTime = 'Timp';
  static const String labelDifficulty = 'Dificultate';
  static const String labelCategory = 'Categorie';
  static const String labelMealType = 'Tip masă';
  static const String labelVegetarian = 'Vegetarian';
  static const String prepTimeMinutes = 'min';

  // Difficulty Levels
  static const String difficultyEasy = 'Ușor';
  static const String difficultyMedium = 'Mediu';
  static const String difficultyHard = 'Dificil';

  // Filters
  static const String filtersTitle = 'Filtre';
  static const String filterByMealType = 'Tip masă';
  static const String filterByCountry = 'Țară';
  static const String filterVegetarian = 'Doar vegetariene';
  static const String filterClearAll = 'Șterge filtre';
  static const String filterApply = 'Aplică';

  // Cooking Steps Screen
  static const String stepsTitle = 'Pași de Preparare';
  static const String buttonNextStep = 'Pasul următor';
  static const String buttonPreviousStep = 'Pasul anterior';
  static const String buttonStartTimer = 'Pornește Timer';
  static const String buttonStopTimer = 'Oprește Timer';
  static const String timerFinished = 'Timer terminat! ⏰';
  static const String completedStep = 'Pasul completat!';

  // Messages
  static const String messageStartCooking =
      '👨‍🍳 Pregătește-te să gătești! Mult succes!';
}
