import 'dart:ffi';

import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {

  List<User> users = [
    User( 1 ,'Mostafa Sayeddsjhfjhdskjfhjkdsahfkjhdskjfhkdsjhfjshdfjhsdkhfksdhfkhsdhfkshkfa', '0128467798'),
    User( 2 ,'Lily Sayed', '0213124141234'),
    User( 3 ,'Nourhan Mostafa', '01286543278'),
    User( 1 ,'Mostafa Sayed', '0128467798'),
    User( 2 ,'Lily Sayed', '0213124141234'),
    User( 3 ,'Nourhan Mostafa', '01286543278'),
    User( 1 ,'Mostafa Sayed', '0128467798'),
    User( 2 ,'Lily Sayed', '0213124141234'),
    User( 3 ,'Nourhan Mostafa', '01286543278'),
    User( 1 ,'Mostafa Sayed', '0128467798'),
    User( 2 ,'Lily Sayed', '0213124141234'),
    User( 3 ,'Nourhan Mostafa', '01286543278'),
    User( 2 ,'Lily Sayed', '0213124141234'),
    User( 3 ,'Nourhan Mostafa', '01286543278'),
    User( 1 ,'Mostafa Sayed', '0128467798'),
    User( 2 ,'Lily Sayed', '0213124141234'),
    User( 3 ,'Nourhan Mostafa', '01286543278'),
  ];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text(
           'Users'
         ) ,
       ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: ListView.separated(
             itemBuilder: (context, index) => buildUserItem(users[index]),
             separatorBuilder: (context, index) => Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(height: 1,color: Colors.grey,),

             ),
             itemCount: users.length,
         ),
       ),

     );
  }


  Widget buildUserItem(User user) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.blue,
          child:
          Text('${user.id}'),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 10
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    '${user.name}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15,

                        color: Colors.black,
                      ),

                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),

                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class User {
  int id;
  String name;
  String  phone;

   User( this.id,  this.name,  this.phone);
}