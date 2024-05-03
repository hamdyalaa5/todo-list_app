import 'package:flutter/material.dart';
import 'package:todo_application/ui/home/home_screen.dart';
import 'package:todo_application/ui/home/my_theme.dart';

void main() {
  runApp( MyApplication());
}

class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        //HomeScreen()---object
        HomeScreen.routeName:(_)=> HomeScreen(),
      },
      initialRoute: HomeScreen.routeName ,
      theme:MyTheme.lightTheme,

    );
  }
}