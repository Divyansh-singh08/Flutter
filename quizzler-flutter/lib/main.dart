import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:quizzler/question.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> Keeper = [];

  int right = 0;
  int wrong = 0;
  String percentage;

  void showAlert() {
    // Alert(
    //   context: context,
    //   title: "QUIZ COMPLETED",
    //   desc: "You have completed the quiz.\n"
    //       "$righties correct answers.\n"
    //       "$wrongies wrong answers.\n"
    //       "Your total score is $percentage.\n"
    //       "The quiz will now reset.",
    //   type: AlertType.success,
    //   buttons: [
    //     DialogButton(
    //       child: Text(
    //         "NICE",
    //         style: TextStyle(
    //             color: Colors.white,
    //             fontSize: 20.0
    //         ),
    //       ),
    //       onPressed: () => Navigator.pop(context),
    //     ),
    //   ],
    // ).show();
  }

  void checkAnswer(bool userPickedAnswer) {
    bool correctans = quizBrain.getCorrectAnswer();
    setState(() {
      //TODO: Step 4 - Use IF/ELSE to check if we've reached the end of the quiz. If so,
      // On the next line, you can also use if (quizBrain.isFinished()) {}, it does the same thing

      if (quizBrain.isFinished() == true) {
        right++;
        //TODO Step 4 Part A - show an alert using rFlutter_alert,

        //This is the code for the basic alert from the docs for rFlutter Alert:
        //Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();

        //Modified for our purposes:
        Alert(
          context: context,
          title: 'End of the Quiz!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();

        //TODO Step 4 Part C - reset the questionNumber,
        quizBrain.reset();

        //TODO Step 4 Part D - empty out the scoreKeeper.
        Keeper = [];
        // scroe++
      }
      //TODO: Step 6 - If we've not reached the end, ELSE do the answer checking steps below 👇
      else {
        wrong++;
        if (userPickedAnswer == correctans) {
          // print('user is right');
          Keeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
          // score++
        } else {
          // print('user is wrong');
          Keeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        // if(quizBrain.isFinished()) {
        //   percentage = (right*100/quizBrain.).toStringAsFixed(2)+'%';
        //   // showAlert();
        //   // quizBrain.reset();
        //   // Keeper.clear();
        //   right = 0;
        //   wrong = 0;
        //   percentage = '';
        // }
        quizBrain.nextQuestion();
      }
    });
  }

  // List<bool> answer = [false, true, true];
  //
  // Question q1 = Question(
  //     s: 'You can lead a cow down stairs but not up stairs.', b: false);
  // Question q2 = Question(
  //     s: 'Approximately one quarter of human bones are in the feet.', b: true);
  // Question q3 = Question(s: 'A slug\'s blood is green.', b: true);

  // List<Question> questionBank = [
  //   Question(s: 'You can lead a cow down stairs but not up stairs.', b: false),
  //   Question(
  //       s: 'Approximately one quarter of human bones are in the feet.',
  //       b: true),
  //   Question(s: 'A slug\'s blood is green.', b: true),
  // ];

  // List<String> questions = [
  //   'You can lead a cow down stairs but not up stairs.',
  //   'Approximately one quarter of human bones are in the feet.',
  //   'A slug\'s blood is green.',
  // ];

  // int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                // Keeper.add(
                //   Icon(
                //     Icons.check,
                //     color: Colors.green,
                //   ),
                // );
                // // quizBrain.questionBank[questionNumber].queAns = true;
                // bool correctans = quizBrain.getCorrectAnswer();
                // if (correctans == true) {
                //   print('user is right');
                // } else {
                //   print('user is wrong');
                // }
                // setState(() {
                //   quizBrain.nextQuestion();
                // });
                // print(quizBrain.questionBank);
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                // bool correctans =
                //     quizBrain.getCorrectAnswer(); //(getQuestion)don`t need
                // if (correctans == false) {
                //   print('user is right');
                // } else {
                //   print('user is wrong');
                // }
                // setState(() {
                //   quizBrain.nextQuestion();
                // });
                checkAnswer(false);
                // print(quizBrain.getQuestionText(questionNumber));
              },
            ),
          ),
        ),
        Row(
          children: Keeper,
        ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
