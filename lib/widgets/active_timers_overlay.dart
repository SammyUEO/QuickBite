import 'package:flutter/material.dart';
import '../utils/timer_service.dart';
import '../common/app_theme.dart';
import '../models/food_item.dart';

/// Overlay care afișează timerele active și permite navigarea la rețete
class ActiveTimersOverlay extends StatelessWidget {
  final List<FoodItem> allFoods;
  final Function(FoodItem, int) onTimerTap;

  const ActiveTimersOverlay({
    super.key,
    required this.allFoods,
    required this.onTimerTap,
  });

  String _formatTime(int seconds) {
    final minutes = seconds ~/ 60;
    final secs = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }

  FoodItem? _findFoodByName(String foodName) {
    try {
      return allFoods.firstWhere((food) => food.name == foodName);
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Map<String, ActiveTimer>>(
      stream: TimerService().timersStream,
      builder: (context, snapshot) {
        final activeTimers = TimerService().getAllActiveTimers();

        if (activeTimers.isEmpty) {
          return const SizedBox.shrink();
        }

        // Grupăm timerele pe rețete
        final Map<String, List<ActiveTimer>> timersByFood = {};
        for (var entry in activeTimers.entries) {
          final timer = entry.value;
          if (!timersByFood.containsKey(timer.foodName)) {
            timersByFood[timer.foodName] = [];
          }
          timersByFood[timer.foodName]!.add(timer);
        }

        return Positioned(
          right: 16,
          bottom: 100,
          child: FloatingActionButton.extended(
            onPressed: () {
              _showActiveTimersSheet(context, timersByFood);
            },
            backgroundColor: AppTheme.primaryColor,
            icon: Stack(
              children: [
                const Icon(Icons.timer, size: 24),
                if (activeTimers.length > 1)
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '${activeTimers.length}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            label: Text(
              '${activeTimers.length} Timer${activeTimers.length > 1 ? 'e' : ''}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }

  void _showActiveTimersSheet(
    BuildContext context,
    Map<String, List<ActiveTimer>> timersByFood,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => SafeArea(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.7,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Handle bar
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              // Header
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.timer,
                      color: AppTheme.primaryColor,
                      size: 28,
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'Timere Active',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.textPrimary,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              const Divider(),
              // Lista de timere grupate pe rețete
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(16),
                  itemCount: timersByFood.length,
                  itemBuilder: (context, index) {
                    final foodName = timersByFood.keys.elementAt(index);
                    final timers = timersByFood[foodName]!
                      ..sort((a, b) => a.stepIndex.compareTo(b.stepIndex));
                    final food = _findFoodByName(foodName);

                    return Card(
                      margin: const EdgeInsets.only(bottom: 16),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header rețetă
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppTheme.primaryColor.withOpacity(0.1),
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(12),
                              ),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.restaurant_menu,
                                  color: AppTheme.primaryColor,
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    foodName,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.textPrimary,
                                    ),
                                  ),
                                ),
                                Text(
                                  '${timers.length} timer${timers.length > 1 ? 'e' : ''}',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Lista de timere pentru această rețetă
                          ...timers.map(
                            (timer) => InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                if (food != null) {
                                  onTimerTap(food, timer.stepIndex);
                                }
                              },
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey[200]!,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    // Step number
                                    Container(
                                      width: 36,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        color: AppTheme.primaryColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '${timer.stepIndex + 1}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    // Step title
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            timer.stepTitle,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: AppTheme.textPrimary,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            'Pasul ${timer.stepIndex + 1}',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey[600],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Timer display
                                    Column(
                                      children: [
                                        Text(
                                          _formatTime(timer.secondsRemaining),
                                          style: const TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: AppTheme.primaryColor,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.arrow_forward_ios,
                                          size: 16,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
