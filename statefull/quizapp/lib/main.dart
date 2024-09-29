import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> quizQuestions = [
    {
      "Question": "Who is the Prime Minister of India?",
      "Options": [
        "Amit Shah",
        "Rajendra Raut",
        "Narendra Modi",
        "Puneet Superstar"
      ],
      "CorrectOption": 2
    },
    {
      "Question": "What is the capital of France?",
      "Options": ["Berlin", "Madrid", "Paris", "Lisbon"],
      "CorrectOption": 2
    },
    {
      "Question": "What is the largest planet in our Solar System?",
      "Options": ["Earth", "Mars", "Jupiter", "Venus"],
      "CorrectOption": 2
    },
    {
      "Question": "Which element has the chemical symbol 'O'?",
      "Options": ["Oxygen", "Gold", "Osmium", "Silver"],
      "CorrectOption": 0
    },
    {
      "Question": "In what year did World War II end?",
      "Options": ["1945", "1939", "1941", "1950"],
      "CorrectOption": 0
    },
    {
      "Question": "Who wrote 'Romeo and Juliet'?",
      "Options": [
        "Charles Dickens",
        "William Shakespeare",
        "Mark Twain",
        "Jane Austen"
      ],
      "CorrectOption": 1
    },
    {
      "Question": "What is the smallest prime number?",
      "Options": ["1", "2", "3", "5"],
      "CorrectOption": 1
    },
    {
      "Question": "Which is the longest river in the world?",
      "Options": ["Amazon", "Nile", "Yangtze", "Mississippi"],
      "CorrectOption": 1
    },
    {
      "Question": "What is the chemical formula of water?",
      "Options": ["H2O", "O2", "CO2", "N2"],
      "CorrectOption": 0
    },
    {
      "Question": "Who painted the 'Mona Lisa'?",
      "Options": [
        "Vincent van Gogh",
        "Pablo Picasso",
        "Leonardo da Vinci",
        "Claude Monet"
      ],
      "CorrectOption": 2
    }
  ];

  int questionNum = 0;
  int selectedIndex = -1;
  int score = 0;

  WidgetStateProperty<Color?> clickoption(int answer) {
    if (selectedIndex != -1) {
      if (answer == quizQuestions[questionNum]["CorrectOption"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (answer == selectedIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  bool questionPage = true;
  @override
  Widget build(BuildContext context) {
    return isQuestion();
  }

  Scaffold isQuestion() {
    if (questionPage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 110,
                ),
                Text(
                  "Questions :${questionNum + 1} / ${quizQuestions.length}",
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    "${quizQuestions[questionNum]["Question"]}",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.purple,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 330,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    if (selectedIndex == -1) {
                      selectedIndex = 0;
                      if (selectedIndex ==
                          quizQuestions[questionNum]["CorrectOption"]) {
                        score++;
                      }
                      setState(() {});
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: clickoption(0),
                  ),
                  child: Text(
                    "A. ${quizQuestions[questionNum]["Options"][0]}",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 330,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedIndex == -1) {
                    selectedIndex = 1;
                    if (selectedIndex ==
                        quizQuestions[questionNum]["CorrectOption"]) {
                      score++;
                    }
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor: clickoption(1),
                ),
                child: Text(
                  "B. ${quizQuestions[questionNum]["Options"][1]}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 330,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedIndex == -1) {
                    selectedIndex = 2;
                    if (selectedIndex ==
                        quizQuestions[questionNum]["CorrectOption"]) {
                      score++;
                    }

                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor: clickoption(2),
                ),
                child: Text(
                  "C. ${quizQuestions[questionNum]["Options"][2]}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 330,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedIndex == -1) {
                    selectedIndex = 3;
                    if (selectedIndex ==
                        quizQuestions[questionNum]["CorrectOption"]) {
                      score++;
                    }
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor: clickoption(3),
                ),
                child: Text(
                  "D. ${quizQuestions[questionNum]["Options"][3]}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedIndex > -1) {
              if (questionNum < quizQuestions.length - 1) {
                questionNum++;
              } else {
                questionPage = false;
              }
              selectedIndex = -1;
              setState(() {});
            }
          },
          child: const Icon(Icons.forward),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz End",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Image.network(
                "https://cdn.dribbble.com/users/421739/screenshots/1614388/trophygif.gif",
                height: 200,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Congratulation",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Your Score is : ${score}/ ${quizQuestions.length}",
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      questionPage = true;
                      questionNum = 0;
                      score = 0;
                      setState(() {});
                    },
                    child: const Text(
                      "Reset",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                  ))
            ],
          ),
        ),
      );
    }
  }
}