

import 'package:flutter/material.dart';
import 'package:todoapp_flutter_axum/pallete.dart';

class RaisedButton extends StatelessWidget {

  final VoidCallback onPressed;
  final Color color;
  final String text;
/// It's a button can used in sign type senarios.
const RaisedButton({super.key, required this.onPressed,  this.color= Pallete.whiteColor, this.text  = '',});

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child:  Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
  