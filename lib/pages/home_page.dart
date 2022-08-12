import 'package:first_flutter/util/emotion_face.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //greetings row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //hi jared
                      const Text(
                        'Hi, Jared!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '23, Jan, 2021',
                        style: TextStyle(color: Colors.blue[100]),
                      ),
                    ],
                  ),

                  //notification
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(12),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 25,
              ),

              // search bar
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              //how do you feel

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'How do you feel?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ],
              ),

              const SizedBox(
                height: 25,
              ),

              //4 different faces
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //bad
                  Column(
                    children: const [
                      EmotionFace(
                        emotionFace: '😩',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Bad',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),

                  //fine
                  Column(
                    children: const [
                      EmotionFace(
                        emotionFace: '🙂',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Fine',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  //well
                  Column(
                    children: const [
                      EmotionFace(
                        emotionFace: '😊',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Well',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  //excitement
                  Column(
                    children: const [
                      EmotionFace(
                        emotionFace: '🥳',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Excellent',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
