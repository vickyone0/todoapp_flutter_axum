

import 'package:flutter/material.dart';
import 'package:todoapp_flutter_axum/pages/home_page.dart';
import 'package:todoapp_flutter_axum/widgets/custom_text_field.dart';
import 'package:todoapp_flutter_axum/widgets/round_button.dart';

class UpdateTodoPage extends StatelessWidget {
const UpdateTodoPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 50,),
                 Text("Update your task...",
                 style:TextStyle(
                   color: Colors.black,
                   fontSize: 30,
                   fontWeight: FontWeight.bold
                 ),
                 ),
                 SizedBox(height: 20,),
                 CustomTextField( containerColor: Colors.lightBlue),
                  
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RoundButton(
                    callback: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> HomePage()));
                    },
                    text: 'Save',
                    color: Colors.orangeAccent,
                    textColor: Colors.white,
                  ),
          ),
                  
                  SizedBox(height: 20,),
              ],
            ),
      ));;
  }
}