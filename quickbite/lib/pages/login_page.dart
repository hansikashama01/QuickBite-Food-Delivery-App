import 'package:flutter/material.dart';
import 'package:quickbite/comonents/my_button.dart';
import 'package:quickbite/comonents/my_textfield.dart';

class loginpage extends StatefulWidget {
  final void Function()? onTap;

  const loginpage({super.key,required this.onTap});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  //text editing controllers
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,),
            
        const SizedBox(height: 25,),
        
            //massege app slogan
            Text(
              "Food Delivery App",
            style: TextStyle(
              fontSize: 16,
             ),
            ),

            const SizedBox(height: 25,),
            //email textfiled
          MyTextField(
            controller: emailController,
            hintText:"Email",
            obscureText: false,          ),

            const SizedBox(height: 10,),
            //password textfield
               //email textfiled
          MyTextField(
            controller: passwordController,
            hintText:"Password",
            obscureText: true,          ),

            const SizedBox(height: 10,),
        
            //sign im button 

            MyButton(text: 
            "Sign In", 
            onTap:(){},
            ),

            const SizedBox(height: 25,),

        
            //not a member register now 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary
                 ),
                ),
                const SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Register now",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                    ),
                   ),
                ),
              ],
            )






          ],
        ),
      ),
    ); 
  }
}