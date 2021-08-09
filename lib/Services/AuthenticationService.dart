//you have to use HTTP package, so go to https://pub.dev/packages/http,
//then select installing

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as  http;
import 'dart:convert';

import 'package:help_worth/Services/http_exception.dart';

class Authentication with ChangeNotifier{

  //signUp method
  Future<void> signUp(String email, String password) async{
    var url = Uri.parse("https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyB0e6ZBaS0JmpMtSBCulYPoMGfHbZkigjM");

    try{
      final response = await http.post(url, body: json.encode(
          {
            "email" : email,
            "password" :password,
            "returnSecureToken" : true, //always true
          }
      ));
      final responseData = json.decode(response.body);
      print(responseData);
    }catch(error){
      throw error;
    }

  }

  //copy and paste above method
//login method
  Future<void> logIn(String email, String password) async{
    //change the url to according to REST API
    var url = Uri.parse("https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyDuR0jkVOT0BirZpaEJkhwWTkXOTLjUSHg");

    try{
      final response = await http.post(url, body: json.encode(
          {
            "email" : email,
            "password" :password,
            "returnSecureToken" : true, //always true
          }
      ));
      final responseData = json.decode(response.body);
      if(responseData['error'] != null){
        throw HttpException(responseData['error']['message']);
      }
      // print(responseData);

    }catch(error){
      throw error;
    }

  }
}


