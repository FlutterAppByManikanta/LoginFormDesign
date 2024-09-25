import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/components/MyButton.dart';
import 'package:login_app/components/MyTextfield.dart';
import 'package:login_app/components/SquareTile.dart';

class Loginscreen extends StatelessWidget {

  final userNameController = TextEditingController();
  final userPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:  SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

                Icon(Icons.lock , size: 100,),

                SizedBox(height: 50,),

                Text("Welcome Back,you have been missed!",style: TextStyle(fontSize : 15,color: Colors.grey[700]),),

                SizedBox(height: 25,),

                MyTextfield(controller: userNameController , hintText: "UserName" , obscureText: false),

                SizedBox(height: 10,),

                MyTextfield(controller: userPasswordController , hintText: "Password" , obscureText: true),

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot Password?",style: TextStyle(color: Colors.grey[600]),),
                    ],
                  ),
                ),

              SizedBox(height: 10,),

              MyButton(),

              SizedBox(height: 50,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(children: [

                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],),
                  ),

                  Text("Or continue with",style: TextStyle(color: Colors.grey[700]),),


                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],),
                  ),

                ],),
              ),

              SizedBox(height: 50,),

               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SquareTile(imagePath: 'lib/images/google.png'),

                  SizedBox(width: 20,),
                  
                  SquareTile(imagePath: 'lib/images/apple.png',),
                ],),
              
              SizedBox(height: 30,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text("Not a Member?",style: TextStyle(color: Colors.grey[700]),),
                  
                  SizedBox(width: 5,),
                  
                  Text("Register Now",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
                  
                ],
              )









            ],
          ),
        ),
      ),
    );
  }

}