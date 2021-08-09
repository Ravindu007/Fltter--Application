
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_worth/Screens/MyHomePage.dart';
import 'package:help_worth/Screens/SignupScreen.dart';
import 'package:help_worth/Services/AuthenticationService.dart';

import 'package:provider/provider.dart';

// import 'SignupScreen.dart';
// import 'main.dart';

class Logscreen extends StatefulWidget {
  const Logscreen({Key? key}) : super(key: key);

  @override
  _LogscreenState createState() => _LogscreenState();
}

class _LogscreenState extends State<Logscreen> {
  final GlobalKey<FormState>_formKey = GlobalKey();

  Map<String, String> _authData = {
    'email' : " ",
    'password': " ",
  };

  //error message
  void _showErrorDialog(String msg){
    showDialog(context: (context), builder: (ctx) =>
        AlertDialog(
          title: Text("An error occured"),
          content: Text(msg),
          actions: [
            FlatButton(
                onPressed: (){
                  Navigator.of(context).pop;
                },
                child: Text("Okay"))
          ],
        )
    );
  }



  //login method
  Future<void> _login() async{
    if(!_formKey.currentState!.validate()){
      return;
    }
    _formKey.currentState!.save();

    try{
      await Provider.of<Authentication>(context, listen:false).logIn(
          _authData["email"]!,
          _authData["password"]!
      );

      //if sign up happen successfull naviagate to a different page
      Navigator.of(context).push(MaterialPageRoute(
          builder: (_){
            return MyHomePage(); //different screen
          }
      ));
    }catch(error){
      var errorMessage = 'Authentication Failed. Please try again later';
      _showErrorDialog(errorMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon:Icon(Icons.home),
          onPressed: (){
            Navigator.pop(context, MyHomePage());
          },
        ),
        title: Text("User Login"),
      ),
      //this column will be the whole body
      body: SingleChildScrollView(
        reverse: true,
        child: Column( //if tou want to create elements in body, begin with a Column
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //this is section 1
            Container(
              color: Colors.pinkAccent,
              width: double.infinity,
              //buy using a stack we can compress elements better than a column
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 100.0, 0.0, 0.0),
                    child: Text("Hello", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 150.0, 0.0, 0.0),
                    child: Text("user", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),

            //this is the second section
            Container(

              child:
              Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                    child:Form(
                      key: _formKey,
                      child: SingleChildScrollView(
                        reverse: true,
                        child: Container(
                          child: Column(
                            children: [

                              //email
                              TextFormField(
                                decoration: InputDecoration(labelText: "Email"),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value){ //this will going to validate user input
                                  if(value!.isEmpty || !value.contains('@')){
                                    return 'Invalid Email';
                                  }
                                  return null;
                                },
                                onSaved: (value){
                                  _authData["email"] = value!;
                                },
                              ),


                              //password
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Password",
                                ),
                                keyboardType: TextInputType.emailAddress,
                                obscureText: true,
                                validator: (value){ //this will going to validate user input
                                  if(value!.isEmpty || value.length<=5){
                                    return 'Invalid Email';
                                  }
                                  return null;
                                },
                                onSaved: (value){
                                  _authData["password"] = value!;
                                },
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,), //this will give a small gap between two text fields


                  //forget password link
                  Container(
                    alignment: Alignment(0.8,0.0),
                    padding: EdgeInsets.only(top: 15.0, left: 20.0),
                    child:InkWell( //use for links
                      child: Text("Forget Password", style: TextStyle(color: Colors.red, decoration: TextDecoration.underline, fontSize: 15.0)),
                      onTap: (){

                      },
                    ),
                  ),



                  SizedBox(height: 40.0,), //this will give a small gap between two text fields

                  // login-button
                  Container(
                    width: 250.0,
                    height: 40.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.lightBlue,
                      color: Colors.blue,
                      elevation: 7.0,

                      child: GestureDetector(
                        onTap: (){
                          //define the login method up in the class
                          _login();
                        },
                        child: Center(
                          child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold,),),
                        ),
                      ),
                    ),
                  ),
                  //Login Button


                  SizedBox(height: 30.0,), //this will give a small gap between two text fields

                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom)
            ),
          ],
        ),
      ),



      //signup button - FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_){
                return Signupscreen();
              }
          ));
        },
        child: Text("Sign\n  up", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
      ),

    );
  }
}
