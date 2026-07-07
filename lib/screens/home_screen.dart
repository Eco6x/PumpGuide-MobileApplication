import 'package:flutter/material.dart';
import 'exercises_screen.dart';
import 'workout_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<String> muscleGroups = const [
    'Upper Body',
    'Lower Body',
    'Back',
    'Core',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PumpGuide'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 207, 207, 207),
        ),
        child: ListView.builder(
          itemCount: muscleGroups.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                muscleGroups[index],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ExercisesScreen(muscleGroup: muscleGroups[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WorkoutScreen()),
          );
        },
        child: const Icon(Icons.fitness_center),
      ),
    );
  }
}
