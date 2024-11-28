import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quickbite/Auth/login_or_register.dart';
import 'package:quickbite/themes/theme_provider.dart';

//import 'pages/login_page.dart';


void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => ThemeProvider(),
    child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home:  const LoginOrRegister(),
       theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
