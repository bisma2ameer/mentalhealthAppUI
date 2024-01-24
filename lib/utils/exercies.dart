import 'package:flutter/material.dart';

class Exercises extends StatelessWidget {
  final  icon;
  final String exerciseName;
  final String exerciseNo;
  final color;


  const Exercises({super.key, required this.icon, required this.exerciseName, required this.exerciseNo, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:12.0),
      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)
    
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              
                              children: [
                              Container(
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: color,
                                  borderRadius: BorderRadius.circular(16)
                                ),
                                 child: Icon(icon)
                              ),
                             
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(exerciseName,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(exerciseNo,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.grey
                                  ),)
                                ],
                              )
                              
                              
                             
                            ],),
                             Icon(Icons.more_horiz)
                          ],
                        )
                      ),
    );
  }
}