import 'package:flutter/material.dart';
import '../data/exercise_data.dart';
import 'exercise_detail_screen.dart';

class ExercisesScreen extends StatefulWidget {
  final String muscleGroup;

  const ExercisesScreen({super.key, required this.muscleGroup});

  @override
  State<ExercisesScreen> createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  bool showGif = false;

  @override
  Widget build(BuildContext context) {
    final exercises = allExercises
        .where((e) => e.muscleGroup == widget.muscleGroup)
        .toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          widget.muscleGroup,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                showGif
                    ? exercises[index].gifPath
                    : exercises[index].croppedPath,
                width: 100,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(exercises[index].name),
            subtitle: Text(exercises[index].difficultyLevel),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ExerciseDetailScreen(exercise: exercises[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          showGif = !showGif;
        }),
        child: Icon(showGif ? Icons.image : Icons.gif),
      ),
    );
  }
}
