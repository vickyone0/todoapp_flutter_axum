

import 'package:flutter/material.dart';
import 'package:todoapp_flutter_axum/pages/add_todo_page.dart';
import 'package:todoapp_flutter_axum/pages/update_todo_page.dart';
import 'package:todoapp_flutter_axum/widgets/round_button.dart';

class HomePage extends StatelessWidget {
const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
            backgroundColor: Colors.orangeAccent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 50,),
                 Expanded(
                    child: Center(
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> UpdateTodoPage()));
                              },
                              child: Card(
                                child: ListTile(
                                  title: Text('Item $index'),
                                  trailing: IconButton(
                                    icon: Icon(Icons.menu),
                                    onPressed: (){
                                                  
                                    },
                                    )
                                ),
                              ),
                            ),
                          );
                        })
                    ),
                  ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RoundButton(
                    callback: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddTodoPage()));
                    },
                    text: 'New',
                    color: Colors.blueAccent,
                    textColor: Colors.black,
          )
                  ),
                  SizedBox(height: 20,),

                
              ],
            ),
      
      ),
    );
    
  }
}