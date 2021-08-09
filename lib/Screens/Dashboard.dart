import 'package:flutter/material.dart';

import 'MyHomePage.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("User"),
        actions: [
          //Edit details
          // RaisedButton(
          //   onPressed: (){
          //     Navigator.of(context).push(MaterialPageRoute(
          //         builder: (_){
          //           return EditScreen(); //different screen
          //         }
          //     ));
          //   },
          //   child: Icon(
          //     Icons.edit,
          //     color: Colors.white,
          //   ),
          //   color: Colors.blue,
          // ),

          //back to home page
          RaisedButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_){
                    return MyHomePage(); //different screen
                  }
              ));
            },
            child: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            color: Colors.blue,
          ),

        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              //welcome screen
              Container(
                height: 175.0,
                width: double.infinity,
                color: Colors.pink,
                child: Container(
                  height: 175.0,
                  child: ClipRect(
                    child:Image.asset(
                      'assets/school1.jpg',
                      width: 180.0,
                      height: 180.0,
                    ),
                  ),
                ),
              ),



              //catagory
              Container(
                height: 80.0,
                color: Colors.lightBlue,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Catogory: ", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Volunteer Teacher", style: TextStyle(fontSize: 25.0),),
                    ),
                  ],
                ),
              ),

              //Name
              Container(
                height: 80.0,
                color: Colors.amberAccent,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Name: ", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Ravindu Sandaruwan", style: TextStyle(fontSize: 25.0),),
                    ),
                  ],
                ),
              ),

              //Phone Number
              Container(
                height: 80.0,
                color: Colors.lightGreenAccent,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Phone No: ", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("0778581137", style: TextStyle(fontSize: 25.0),),
                    ),
                  ],
                ),
              ),

              //Email Address
              Container(
                height: 80.0,
                color: Colors.orangeAccent,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Email: ", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("naruto@gmail.com", style: TextStyle(fontSize: 25.0),),
                    ),
                  ],
                ),
              ),

              //Description
              Container(
                height: 200.0,
                color: Colors.lightBlueAccent,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Description: ", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),


                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("I would like to teach maths", style: TextStyle(fontSize: 20.0),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
