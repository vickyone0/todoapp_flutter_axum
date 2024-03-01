// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {

final Color containerColor;
late String? intialValue;

 CustomTextField({
    Key? key,
        required this.containerColor,
    this.intialValue,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context){
  


    return Container(
                   width: 300,
                   height: 300,
                   decoration: BoxDecoration(
                     color: widget.containerColor,
                     borderRadius: BorderRadius.circular(20),
                   ),
                   child: const Padding(
                     padding:  EdgeInsets.all(16.0),
                     child: TextField(
                                            style: TextStyle(
                        fontSize:20, 
                      ),
                      maxLines: null,
                       decoration: InputDecoration(
                         border: InputBorder.none,
                         hintText: 'Prepare bussiness plan \nand implement it',
                         hintStyle: TextStyle(
                           color: Colors.blueGrey,
                           fontSize: 20,
                         ),
                       ),
                     ),
                   ),
                   
                 );
  }
}