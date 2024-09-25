import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
      child: Center(child: Text("Sign In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
    );

  }



}