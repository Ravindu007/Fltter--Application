import 'package:flutter/material.dart';
import 'package:help_worth/Screens/MyHomePage.dart';
import 'package:help_worth/Services/AuthenticationService.dart';
import 'package:provider/provider.dart';



class Signupscreen extends StatefulWidget {
  const Signupscreen({Key? key}) : super(key: key);

  @override
  _SignupscreenState createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {

  final GlobalKey<FormState>_formkey = GlobalKey<FormState>();
  TextEditingController _passwordcontroller = new TextEditingController();

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

  Map<String, String> _authData = {
    'email' : '',
    'password' : '',
  };

  //submit method
  Future<void>_submit() async{
    if(!_formkey.currentState!.validate()){
      return ;
    }
    _formkey.currentState!.save();

    try{
      await Provider.of<Authentication>(context, listen:false).signUp(
          _authData['email']!,
          _authData['password']!
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
      appBar: AppBar(
        title: Text("New Registration"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100.0,
              color: Colors.amber,
              child: Stack(
              ),
            ),

            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Form(
                      key: _formkey,
                      child: SingleChildScrollView(
                        child: Container(
                          child: Column(
                            children: [

                              //first Name
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: "First Name",
                                  hintText: "Enter your First Name",
                                ),
                                // Validating user input
                                validator: (text){
                                  if(text!.isEmpty){
                                    return "Name should be provided"; //this wil print if user havent entered a name
                                  }
                                  //can write many validations
                                  return null;
                                },
                                //if text form is validated corrected we can take that text for our system
                                onSaved:(text){

                                } ,
                              ),
                              SizedBox(height: 20.0,),

                              //Last Name
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Last Name",
                                  hintText: "Enter your Last Name",
                                ),
                                // Validating user input
                                validator: (text){
                                  if(text!.isEmpty){
                                    return "Name should be provided"; //this wil print if user havent entered a name
                                  }
                                  //can write many validations
                                  return null;
                                },
                                //if text form is validated corrected we can take that text for our system
                                onSaved:(text){

                                } ,
                              ),
                              SizedBox(height: 20.0,),

                              //email
                              TextFormField(
                                decoration: InputDecoration(
                                    labelText: "Email",
                                    hintText: "Enter your Email"
                                ),
                                validator: (value){ //this will going to validate user input
                                  if(value!.isEmpty || !value.contains('@')){
                                    return 'Invalid Email';
                                  }
                                  return null;
                                },
                                onSaved: (value){
                                  _authData['email'] = value!;
                                  // print(_authData['email']);
                                },
                              ),
                              SizedBox(height: 20.0,),

                              //password
                              TextFormField(
                                decoration: InputDecoration(
                                    labelText: "Password",
                                    hintText: "Enter a strong Password"
                                ),
                                obscureText: true,
                                validator: (value){ //this will going to validate user input
                                  if(value!.isEmpty || value.length<=5){
                                    return 'Invalid password';
                                  }
                                  return null;
                                },
                                onSaved: (value){
                                  _authData['password'] = value!;
                                  print(_authData['password']);
                                },
                              ),
                              SizedBox(height: 20.0,),

                              // Confirm password
                              TextFormField(
                                decoration: InputDecoration(
                                    labelText: " Confirm Password",
                                    hintText: "Enter the Password again"
                                ),
                                obscureText: true,
                                controller: _passwordcontroller,
                                validator: (text){ //this will going to validate user input
                                  if(text!.isEmpty || text != _passwordcontroller.text){
                                    return 'Invalid password';
                                  }
                                  return null;
                                },
                                onSaved: (text){
                                  // _password = text!;
                                },
                              ),
                              SizedBox(height: 20.0,),

                              SizedBox(height: 40.0,),
                              //save button
                              Container(
                                child: RaisedButton(
                                  child: Text("Sign up"),
                                  onPressed: (){ //when pressing this button it will check validation and print msg
                                    _submit();
                                  },
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

