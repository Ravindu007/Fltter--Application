import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:help_worth/Services/AuthenticationService.dart';

import 'Screens/MyHomePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Authentication(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false, //show debug banner

        title: "Flutter Demo",
        theme: ThemeData(
            brightness: Brightness.dark
        ),
        home: MyHomePage(),
      ),
    );
  }
}