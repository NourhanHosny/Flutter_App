import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
       return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.red,
         leading: const Icon(Icons.menu),
         title: const Text('Home Page'),
         actions: [
           IconButton(onPressed: (){print('search');}, icon: const Icon(Icons.search )),
           IconButton(onPressed: (){print('Notification');}, icon: const Icon(Icons.notification_important  )),
         ],
         centerTitle: true,
       ),
         body: Column(
           children: [
               Expanded(
                 child: Container(
                   color: Colors.red,
                   child: const Text(
                   'this is the first line',
                    style: TextStyle(
                      fontSize: 20,

                    ),
             ),
                 ),
               ),
             Expanded(
               child: Container(
                 color: Colors.blue,
                 child: const Text(
                   'this is the first line',
                   style: TextStyle(
                     fontSize: 20,

                   ),
                 ),
               ),
             ),
             Expanded(
               child: Container(
                 color: Colors.yellow,
                 child: const Text(
                   'this is the first line',
                   style: TextStyle(
                     fontSize: 20,
                     
                   ),
                 ),
               ),
             ),
           ],
         ),
       );
  }

}