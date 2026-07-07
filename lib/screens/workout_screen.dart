import 'dart:math';
import '../data/exercise_data.dart';
import '../models/exercise.dart';
import 'package:flutter/material.dart';
import 'exercise_detail_screen.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final shuffled = List<Exercise>.from(allExercises)..shuffle(random);
    final todaysWorkout = shuffled.take(5).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Today\'s Workout'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: const Color.fromARGB(59, 41, 41, 41)),
        child: ListView.builder(
          itemCount: todaysWorkout.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  todaysWorkout[index].croppedPath,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),

              title: Text(todaysWorkout[index].name),
              subtitle: Text(todaysWorkout[index].difficultyLevel),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ExerciseDetailScreen(exercise: todaysWorkout[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
