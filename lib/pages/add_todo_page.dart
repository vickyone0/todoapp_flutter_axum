

import 'package:flutter/material.dart';
import 'package:todoapp_flutter_axum/pages/home_page.dart';
import 'package:todoapp_flutter_axum/widgets/custom_text_field.dart';
import 'package:todoapp_flutter_axum/widgets/round_button.dart';

class AddTodoPage extends StatelessWidget {
const AddTodoPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 50,),
                 Text("What's in your mind ?",
                 style:TextStyle(
                   color: Colors.black,
                   fontSize: 30,
                   fontWeight: FontWeight.bold
                 ),
                 ),
                 SizedBox(height: 20,),
                 CustomTextField(
                  containerColor: Colors.white,

                 ) ,
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RoundButton(
                    callback: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()) );
                    },
                    text: 'Push',
                    color: Colors.orangeAccent,
                    textColor: Colors.white,
                  ),
          ),
                  
                  SizedBox(height: 20,),
              ],
            ),
      ));
  }
}