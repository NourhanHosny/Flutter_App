import 'dart:ffi';

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
         body: SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Column(
             children: [
               Stack(
                 alignment: AlignmentDirectional.bottomCenter,
                 children: [
                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.blue,
                    child: const Image(
                      image:
                        NetworkImage(
                          'https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
                        ),
                         fit: BoxFit.cover,
                      ),
                  ),
                     Container(
                       width: 300,
                       color: Colors.black.withOpacity(0.4),
                       
                       padding: EdgeInsets.symmetric(
                         vertical: 10,
                         horizontal: 10,
                       ),
                       child: const Text(
                       'this is the first line',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                           color: Colors.white,

                        ),
                   ),
                     ),

                 ],
               ),
             ],
           ),
         ),
       );
  }

}