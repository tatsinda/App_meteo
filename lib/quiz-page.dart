import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  QuizPage() {}
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestion = 0;
  int score = 0;
  var quiz = [
    {
      "title": "Question 1",
      "answers": [
        {"answer": "Answer 11", "correct": false},
        {"answer": "Answer 12", "correct": false},
        {"answer": "Answer 13", "correct": false}
      ]
    },
    {
      "title": "Question 2",
      "answers": [
        {"answer": "Answer 21", "correct": false},
        {"answer": "Answer 22", "correct": true},
        {"answer": "Answer 23", "correct": false}
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quiz Page'),
        ),
        body: (this.currentQuestion >= quiz.length)
            ? Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Score : ${100 * score / quiz.length} %',
                    style: TextStyle(fontSize: 22, color: Colors.deepOrange),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        this.score = 0;
                        this.currentQuestion = 0;
                      });
                    },
                    child: Text(
                      'Restart...',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          backgroundColor: Colors.deepOrange),
                    ),
                  )
                ],
              ))
            : ListView(
                children: [
                  ListTile(
                    title: Center(
                        child: Text(
                      'Question ${quiz[currentQuestion]['title']}/${quiz.length}',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  ListTile(
                    title: Text(
                      '${quiz[currentQuestion]['title']}',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ),
                  //on boucle
                  ...(quiz[currentQuestion]['answers']
                          as List<Map<String, Object>>)
                      .map((answer) {
                    return ListTile(
                      title: ElevatedButton(
                        onPressed: (() {
                          setState(() {
                            if (answer['correct'] == true) {
                              score++;
                            }
                            currentQuestion++;
                          });
                        }),
                        child: Text(answer["answer"]),
                      ),
                    );
                  })
                ],
              ));
  }
}
