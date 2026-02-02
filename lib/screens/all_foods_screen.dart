import 'package:flutter/material.dart';
import '../data/food_data.dart';
import '../models/food_item.dart';
import '../widgets/food_card.dart';
import '../widgets/active_timers_overlay.dart';
import '../common/app_strings.dart';
import '../common/app_theme.dart';
import '../utils/navigation_helper.dart';
import 'food_details_screen.dart';
import 'cooking_steps_screen.dart';

/// Ecranul cu toate preparatele - cu sistem de filtrare
class AllFoodsScreen extends StatefulWidget {
  const AllFoodsScreen({super.key});

  @override
  State<AllFoodsScreen> createState() => _AllFoodsScreenState();
}

class _AllFoodsScreenState extends State<AllFoodsScreen> {
  MealType? _selectedMealType;
  String? _selectedCountry;
  bool _vegetarianOnly = false;
  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<FoodItem> get _filteredFoods {
    List<FoodItem> foods = FoodData.allFoods;

    // Filtrare după search
    if (_searchQuery.isNotEmpty) {
      foods = foods
          .where(
            (f) =>
                f.name.toLowerCase().contains(_searchQuery.toLowerCase()) ||
                f.category.toLowerCase().contains(_searchQuery.toLowerCase()) ||
                f.description.toLowerCase().contains(
                  _searchQuery.toLowerCase(),
                ),
          )
          .toList();
    }

    // Filtrare după tip masă
    if (_selectedMealType != null) {
      foods = foods.where((f) => f.mealType == _selectedMealType).toList();
    }

    // Filtrare după țară
    if (_selectedCountry != null) {
      foods = foods.where((f) => f.category == _selectedCountry).toList();
    }

    // Filtrare vegetarian
    if (_vegetarianOnly) {
      foods = foods.where((f) => f.isVegetarian).toList();
    }

    return foods;
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

  void _showFilterDialog() {
    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) {
          return AlertDialog(
            title: const Text(AppStrings.filtersTitle),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Filtre tip masă
                  const Text(
                    AppStrings.filterByMealType,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      FilterChip(
                        label: const Text('Toate'),
                        selected: _selectedMealType == null,
                        onSelected: (selected) {
                          setDialogState(() => _selectedMealType = null);
                        },
                      ),
                      ...MealType.values.map(
                        (type) => FilterChip(
                          label: Text(type.displayName),
                          selected: _selectedMealType == type,
                          onSelected: (selected) {
                            setDialogState(
                              () => _selectedMealType = selected ? type : null,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Filtre țară
                  const Text(
                    AppStrings.filterByCountry,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      FilterChip(
                        label: const Text('Toate'),
                        selected: _selectedCountry == null,
                        onSelected: (selected) {
                          setDialogState(() => _selectedCountry = null);
                        },
                      ),
                      ...FoodData.getAllCountries().map(
                        (country) => FilterChip(
                          label: Text(country),
                          selected: _selectedCountry == country,
                          onSelected: (selected) {
                            setDialogState(
                              () =>
                                  _selectedCountry = selected ? country : null,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Filtru vegetarian
                  SwitchListTile(
                    title: const Text(AppStrings.filterVegetarian),
                    value: _vegetarianOnly,
                    onChanged: (value) {
                      setDialogState(() => _vegetarianOnly = value);
                    },
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  setState(() {
                    _selectedMealType = null;
                    _selectedCountry = null;
                    _vegetarianOnly = false;
                  });
                  Navigator.pop(context);
                },
                child: const Text(AppStrings.filterClearAll),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {}); // Actualizează UI-ul principal
                  Navigator.pop(context);
                },
                child: const Text(AppStrings.filterApply),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final filteredFoods = _filteredFoods;

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text(
          AppStrings.allFoodsTitle,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppTheme.primaryColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: _showFilterDialog,
            tooltip: AppStrings.filtersTitle,
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
                children: [
                  // Search bar
                  Container(
                    padding: const EdgeInsets.all(AppTheme.paddingMedium),
                    color: AppTheme.backgroundColor,
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: 'Caută rețete...',
                        prefixIcon: const Icon(
                          Icons.search,
                          color: AppTheme.primaryColor,
                        ),
                        suffixIcon: _searchQuery.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  setState(() {
                                    _searchController.clear();
                                    _searchQuery = '';
                                  });
                                },
                              )
                            : null,
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: AppTheme.primaryColor,
                            width: 2,
                          ),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _searchQuery = value;
                        });
                      },
                    ),
                  ),

                  // Lista de rețete
                  Expanded(
                    child: filteredFoods.isEmpty
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.search_off,
                                  size: 64,
                                  color: Colors.grey[400],
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  _searchQuery.isNotEmpty
                                      ? 'Nu am găsit rețete pentru "$_searchQuery"'
                                      : AppStrings.noFoodsFound,
                                  style: const TextStyle(fontSize: 16),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        : ListView.builder(
                            padding: const EdgeInsets.all(
                              AppTheme.paddingMedium,
                            ),
                            itemCount:
                                filteredFoods.length + 1, // +1 pentru header
                            itemBuilder: (context, index) {
                              // Primul item este header-ul
                              if (index == 0) {
                                return Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(
                                    AppTheme.paddingMedium,
                                  ),
                                  margin: const EdgeInsets.only(
                                    bottom: AppTheme.paddingMedium,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppTheme.primaryColor,
                                    borderRadius: BorderRadius.circular(
                                      AppTheme.cardBorderRadius,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        '${filteredFoods.length} rețete',
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        _getFilterDescription(),
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.white70,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                );
                              }

                              // Restul sunt card-urile cu mâncare
                              final food = filteredFoods[index - 1];
                              return Padding(
                                padding: const EdgeInsets.only(
                                  bottom: AppTheme.paddingMedium,
                                ),
                                child: FoodCard(
                                  food: food,
                                  onTap: () {
                                    NavigationHelper.navigateTo(
                                      context,
                                      FoodDetailsScreen(food: food),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                  ),
                ],
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

  String _getFilterDescription() {
    if (_selectedMealType == null &&
        _selectedCountry == null &&
        !_vegetarianOnly) {
      return AppStrings.allFoodsSubtitle;
    }

    final List<String> filters = [];
    if (_selectedMealType != null) filters.add(_selectedMealType!.displayName);
    if (_selectedCountry != null) filters.add(_selectedCountry!);
    if (_vegetarianOnly) filters.add('Vegetariene');

    return filters.join(' • ');
  }
}
