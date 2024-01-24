import 'package:flutter/material.dart';

class Emotions extends StatelessWidget {
  final String emoji;
  
  const Emotions({super.key, required this.emoji});

  @override
  Widget build(BuildContext context) {
    return Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF408DC5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:  Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(emoji,
                      style: TextStyle(
                        fontSize: 28
                      ),
                      ),
                      ),
                    );
   
    }
}