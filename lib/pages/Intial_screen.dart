


import 'package:flutter/material.dart';
import 'package:todoapp_flutter_axum/widgets/raised_button.dart';

class IntialScreen extends StatelessWidget {
const IntialScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Stack(
        children: <Widget>[
          // Add your image here
          Image.asset(
            'assets/Images/todoIntialBG.webp',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),

          // Add your buttons here
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Sign in button
                RaisedButton(
                  onPressed: () {},
                  text: 'Sign In',
                  color: Colors.blue,
                ),

                SizedBox(height: 20.0),

                // Sign up button
                RaisedButton(
                  onPressed: () {},
                  text: 'Sign Up',
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}