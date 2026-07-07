import '../models/exercise.dart';

final List<Exercise> allExercises = [
  Exercise(
    name: 'Push-ups',
    difficultyLevel: 'Easy',
    description:
        "The Push-up is a fundamental, equipment-free calisthenics movement. It requires no gear and can be done anywhere. This compound exercise targets the chest, shoulders, and triceps while acting as a moving plank to build core strength and stabilize the entire body",
    muscleGroup: 'Upper Body',
    imagePath: 'assets/images/Original/PushUps.png',
    croppedPath: 'assets/images/Cropped/PushUps.png',
    gifPath: 'assets/gifs/PushUps.gif',
    estimatedTime: '5 min',
  ),

  Exercise(
    name: 'Biceps Curls',
    difficultyLevel: 'Easy',
    description:
        "A Bicep Curl is more then just a way to train your arms, it is a way to train rotary stabiity, train your rotator cuff, and after all, plays a bigger role in strength and conditioning then you once thought",
    muscleGroup: 'Upper Body',
    imagePath: 'assets/images/Original/Bicep_Curls.png',
    croppedPath: 'assets/images/Cropped/Bicep_Curls.png',
    gifPath: 'assets/gifs/Bicep_Curls.gif',
    estimatedTime: '8 min',
  ),

  Exercise(
    name: 'Chest Dips',
    difficultyLevel: 'Intermediate',
    description:
        "The chest dip is a great exercise that targets the muscles of the chest. It also works the muscles of the triceps and shoulders as well.",
    muscleGroup: 'Upper Body',
    imagePath: 'assets/images/Original/Chest_Dips.png',
    croppedPath: 'assets/images/Cropped/Chest_Dips.png',
    gifPath: 'assets/gifs/Chest_Dips.gif',
    estimatedTime: '10 mins',
  ),

  Exercise(
    name: 'Incline Bench Press',
    difficultyLevel: 'Intermediate',
    description:
        "The incline bench press is a variation of the bench press and an exercise used to build the muscles of the chest. The shoulders and triceps will be indirectly involved as well. Utilizing an incline will allow you to better target the upper portion of the chest, a lagging part for a lot of lifters.",
    muscleGroup: 'Upper Body',
    imagePath: 'assets/images/Original/Incline_BP.png',
    croppedPath: 'assets/images/Cropped/Incline_BP.png',
    gifPath: 'assets/gifs/Incline_BP.gif',
    estimatedTime: '10 mins',
  ),

  Exercise(
    name: 'Squats',
    difficultyLevel: 'Medium',
    description:
        "The squat is a foundational compound strength exercise that involves lowering the hips from a standing position and then standing back up. It primarily targets the quadriceps, hamstrings, glutes, and core, while also improving mobility, balance, and bone density.",
    muscleGroup: 'Lower Body',
    imagePath: 'assets/images/Original/Squats.png',
    croppedPath: 'assets/images/Cropped/Squats.png',
    gifPath: 'assets/gifs/Squats.gif',
    estimatedTime: '4 mins',
  ),

  Exercise(
    name: 'Plank',
    difficultyLevel: 'Beginner',
    description:
        "The plank is a isometric core-strengthening exercise that involves holding the body in a straight line from head to heels, supported by the forearms and toes. It primarily targets the rectus abdominis, transverse abdominis, obliques, and lower back, while also engaging the shoulders, glutes, and quads.",
    muscleGroup: 'Core',
    imagePath: 'assets/images/Original/Plank.png',
    croppedPath: 'assets/images/Cropped/Plank.png',
    gifPath: 'assets/gifs/Plank.gif',
    estimatedTime: '1:30 mins',
  ),

  Exercise(
    name: 'Deadlift',
    difficultyLevel: 'Hard',
    description:
        "The deadlift is a foundational, full-body compound exercise that involves lifting a weighted barbell from the floor to a standing position. As the 'king of strength exercises', it is a pure hip hinge movement that primarily builds the posterior chain—including the glutes, hamstrings, lower back, and core",
    muscleGroup: 'Back',
    imagePath: 'assets/images/Original/Deadlift.png',
    croppedPath: 'assets/images/Cropped/Deadlift.png',
    gifPath: 'assets/gifs/Deadlift.gif',
    estimatedTime: '15 mins',
  ),
];
