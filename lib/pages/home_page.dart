

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),
        
  onPressed: () {
    
  },
  ),
  centerTitle: true,
  title: Text('Todo List'),
  actions: [
    IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: () {
    }),
    IconButton(icon: Icon(Icons.calendar_month,color: Colors.black,), onPressed: () {
    }),
  ],
      
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child:Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('assets/Images/todoIntialBG.webp',
                width: 80.0,
                height: 80.0,
                fit: BoxFit.cover,
              ),
              ),
              SizedBox(height: 10,),
              Text("Hi Vignesh !",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              SizedBox(height: 10,),
              Text("Good Morning ! ",
              ),
              SizedBox(height: 5,),
              Text("You have 5 task for today. ",
              ),
              SizedBox(height: 32,),
              Text("Monday - 18 March, 2018",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              ),
              SizedBox(height: 10 ,),


              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: 4, // Change this to the actual number of items you have
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(colors: [
                        Colors.blue, Colors.green,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,),
                      
                      ) ,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center ,
                            child: Text('4 Task')),
                            SizedBox(height: 40,),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text('All Task')),
                        ],
                      ),
                    ),
                  );
                },
              ),

             
             
            ],
          )
           ),
        ),
      ),
    );
  }
}