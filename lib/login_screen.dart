import 'dart:collection';

import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
   var emailController = TextEditingController();
   var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return  SafeArea(
      child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: [
                  Container(
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                      ),

                    ),
                  ),
                  const SizedBox(
                    height:  30,
                  ),
                   TextFormField(
                     controller:emailController ,
                     keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: 'Email Adress',
                       border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email)
                    ),
                  ),
                  const SizedBox(
                    height:  30,
                  ),
                   TextFormField(
                     controller:passwordController ,
                       keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                        labelText: 'password',
                        border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock)
                    ),
                  ),
                  const SizedBox(
                    height:  20,
                  ),
                  Container(
                    width: double.infinity,
                    child: MaterialButton(onPressed: (){
                      print(emailController.text);
                      print(passwordController.text);
                    } , child:
                      Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white
                        ),

                      ),
                      color: Colors.blue,
                      ),
                  ),
                  const SizedBox(
                    height:  10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'Don \'t have an account?'

                      ),
                      TextButton(onPressed: (){

                      },
                          child:
                          Text('Register Now'),
                      ),
                    ],
                  ),
                ],
              ),
            ),

      ),
    );
  }
}