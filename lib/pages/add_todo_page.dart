

import 'package:flutter/material.dart';
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
                 Container(
                   width: 300,
                   height: 300,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(20),
                   ),
                   child: TextField(
                    maxLines: null,
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       hintText: 'Prepare bussiness plan and implement it ...'
                     ),
                   ),
                   
                 ),
                  
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RoundButton(
                    callback: (){},
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