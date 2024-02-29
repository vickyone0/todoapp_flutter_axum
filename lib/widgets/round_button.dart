// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;
  final Color color;
  final Color textColor;
  const RoundButton({
    Key? key,
    required this.callback,
    required this.text,
    required this.color, 
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return InkWell(
                    onTap: callback,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color,
                        ),
                        child: Center(
                          child: Text(text,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                  );
  }
}
