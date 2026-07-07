import 'package:flutter/material.dart';
import '../models/exercise.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExerciseDetailScreen extends StatefulWidget {
  final Exercise exercise;

  const ExerciseDetailScreen({super.key, required this.exercise});

  @override
  State<ExerciseDetailScreen> createState() => _ExerciseDetailScreenState();
}

class _ExerciseDetailScreenState extends State<ExerciseDetailScreen> {
  bool showGif = false;
  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                showGif ? widget.exercise.gifPath : widget.exercise.croppedPath,
                height: 400,
                width: 400,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.exercise.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        widget.exercise.description,
                        textStyle: TextStyle(fontSize: 16, color: Colors.black),
                        speed: Duration(milliseconds: 25),
                        cursor: "",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isCompleted = !isCompleted;
                });
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsetsDirectional.only(
                  top: 15,
                  bottom: 15,
                  end: 10,
                  start: 15,
                ),
                backgroundColor: isCompleted
                    ? const Color.fromARGB(255, 190, 44, 44)
                    : const Color.fromARGB(106, 63, 236, 69),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FaIcon(
                    FontAwesomeIcons.dumbbell,
                    size: 20,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text(
                    isCompleted ? "Undo Completion" : "Complete Exercise",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                children: [
                  Text(
                    "Estimated Time: " + widget.exercise.estimatedTime,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showGif = !showGif;
          });
        },
        child: Icon(showGif ? Icons.image : Icons.gif),
      ),
    );
  }
}
