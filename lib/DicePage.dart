// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}
   var leftDiceNumber = 1;
      var rightDiceNumber= 2;
class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
      
    void changeDiceFace() {
      // var leftDiceNumber;
      // var rightDiceNumber;
      setState(() {
        leftDiceNumber = Random().nextInt(5) + 1;
        rightDiceNumber = Random().nextInt(5) + 1;
      });
    }

    return Center(
      child: Row(
        children: [
          Expanded(
              // flex: 2,

              child: TextButton(
            child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed: () {
            changeDiceFace();
            },
          )),
          Expanded(
              child: TextButton(
            child: Image.asset('images/dice$rightDiceNumber.png'),
            onPressed: () {
             
           changeDiceFace();
      
     
            },
          ),),
        ],
      ),
    );
  }
}
