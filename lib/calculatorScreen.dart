import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
     int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text('Calc'),
      ),
      body:
      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed:
                (){
    setState(() {
      value++;
    });
                },
                child:
                Text(
                    '+',
                     style:
                     TextStyle(
                       fontSize: 40,
                       color: Colors.black
                     ),

                ),
            ),
            Text(
                '$value',
              style:
              TextStyle(
                fontSize: 40,
                color: Colors.red
              ),
            ),
            TextButton(onPressed:
                (){
               setState(() {
                 value--;
               });
            },
              child:
              Text(
                '+',
                style:
                TextStyle(
                    fontSize: 40,
                    color: Colors.black
                ),

              ),
            )
          ],
        ),
      ),

    );
  }
}