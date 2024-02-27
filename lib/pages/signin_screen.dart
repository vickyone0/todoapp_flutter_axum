

import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
const SigninScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/Images/todoIntialBG.webp',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          ),
           Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32))),
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 20,
                    ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32))),
                      labelText: 'Password',
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () {    }, 
                    child: Text("Sign in ",
                    style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width,50),
                      backgroundColor: Color(0xFF000080),
                    ),
                    ),
                    SizedBox(height: 20,),

                    InkWell(
                      onTap: (){},
                      child: Text('Forgot Password ?', style: TextStyle(color: Colors.white))),

                      SizedBox(height: 80,),


                      
                    InkWell(
                      onTap: (){},
                      child:
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("Don't have any account? ", style: TextStyle(color: Colors.white)),
                           
                           Text(" Sign Up ", style: TextStyle(
                            color: Color(0xFF000080),
                            fontWeight: FontWeight.bold)),

                         ],
                       )),



                      

                ]
             ),
            )
          ),

       
        ],
      ) ,
    );
  }
}