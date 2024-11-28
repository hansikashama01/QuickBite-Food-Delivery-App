import 'package:flutter/material.dart';

import '../comonents/my_button.dart';
import '../comonents/my_textfield.dart';


class RegisterPage extends StatefulWidget {
   final void Function()? onTap;
  
  const RegisterPage({super.key,required this.onTap,
    }
  );

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmpasswordController = TextEditingController();

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
              "Lest's create an account for you",
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
            
              //password textfiled
          MyTextField(
            controller: passwordController,
            hintText:"Password",
            obscureText: true,          ),

            const SizedBox(height: 10,),

              //confirmpassword textfiled
          MyTextField(
            controller: confirmpasswordController,
            hintText:"Confirm Password",
            obscureText: true,          ),

            const SizedBox(height: 25,),
        
            //sign up button 

            MyButton(text: 
            "Sign up", 
            onTap:(){},
            ),

            const SizedBox(height: 25,),

        
            //alreday have an account? Loging here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("alreday have an account?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary
                 ),
                ),
                const SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Loging now",
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