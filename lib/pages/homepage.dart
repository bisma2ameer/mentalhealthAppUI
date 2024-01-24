// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/utils/colors.dart';
import 'package:weatherapp/utils/exercies.dart';

import '../utils/emotions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgColor,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor:AppTheme.bgColor,
        color: AppTheme.primaryColor,
        items: [
          
        Icon(Icons.home, color: Colors.grey,),
        Icon(Icons.menu, color: Colors.grey, ),
        Icon(Icons.message, color: Colors.grey,),
        Icon(Icons.person_2_rounded, color: Colors.grey,),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Jared!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '23 Jan,2024',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue[200],
                            ),
                          )
                        ],
                      ),
                      //notification icon
                      Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF408DC5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF408DC5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Emotions(emoji: '😔'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Badly',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Emotions(emoji: '🙂'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Emotions(emoji: '😁'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Emotions(emoji: '😀'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Excellent',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                   color: Colors.grey[200],
                   borderRadius: BorderRadius.vertical(top: Radius.circular(50))
                ),
              
                child: Center(
                  child: Column(
                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Exercises', 
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        )),
                        Icon(Icons.more_horiz, color: Colors.black,),
                      ],
                    ),
                    SizedBox(
                        height: 20,
                      ),
                    Expanded(
                      child: ListView(
                        children: [
                          Exercises(icon: Icons.favorite, exerciseName: 'Speaking Skills', exerciseNo: '16 Exercises', color: Colors.orange,),
                          Exercises(icon: Icons.person, exerciseName: 'Reading Skills', exerciseNo: '16 Exercises',color: Colors.green,),

                          Exercises(icon: Icons.star, exerciseName: 'Speaking Skills', exerciseNo: '16 Exercises',color: Colors.red,),
                          Exercises(icon: Icons.person, exerciseName: 'Reading Skills', exerciseNo: '16 Exercises',color: Colors.green,),

                          Exercises(icon: Icons.star, exerciseName: 'Speaking Skills', exerciseNo: '16 Exercises',color: Colors.red,),
                        ],
                      ),
                    )
                    
                  ],),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
