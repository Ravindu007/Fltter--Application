import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_worth/Screens/LoginScreen.dart';
import 'package:help_worth/Screens/SignupScreen.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("HelpWorth" ,style: TextStyle(color: Colors.black),), //appbar- Name
          leading:IconButton( // leading is a drawer
            icon: Icon(Icons.menu_outlined, color: Colors.black,), //drawer's-shape
            onPressed: (){}, // we can pass methods to the drawer
          ) ,
          backgroundColor: Colors.amberAccent,
          actions: [ //we can pass widgets - we normaly add 2 actions
            IconButton(onPressed:(){}, icon:Icon(Icons.search, color: Colors.black,)), //search widget
            IconButton(onPressed:(){}, icon:Icon(Icons.more_vert, color: Colors.black,)) //more -widget
          ],
          //flexibleSpace - place images, icons between toolbar and other components in the Appbar
          // flexibleSpace: Image.asset(
          //   "assets/back.jpg",
          //    fit: BoxFit.cover,
          // ),
          bottom: TabBar(  //bottom of the appbar
            tabs: [
              // Tab(icon: Icon(Icons.volunteer_activism, color: Colors.black,), text:"Volunteer",),
              Tab(
                child: Column(
                  children: [
                    Icon(Icons.volunteer_activism, color: Colors.black,),
                    Text("Volunteer", style: TextStyle(color: Colors.black),)
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Icon(Icons.school, color: Colors.black,),
                    Text("School", style: TextStyle(color: Colors.black),)
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Icon(Icons.thumb_up_outlined, color: Colors.black,),
                    Text("Sponsors", style: TextStyle(color: Colors.black),)
                  ],
                ),
              ),

            ],
          ),
          elevation: 10.0,
        ),
        body:
        TabBarView( //this is the body of scafold,  we use tabBarView to display seperate things for those tabs
          children: [  //as children we should give widgets
            tab1(),
            tab2(),
            tab3(),
          ],
        ),

        //Login button
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_){
                  return Logscreen();
                }
            ));
          },
          child: Text("Login", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          backgroundColor: Colors.amberAccent,
        ),
      ),
    );
  }
}

//Volunteers
class tab1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [

            //profile 1
            Container(
              margin: EdgeInsets.only(left: 10.0, top: 15.0, bottom: 0.0),
              // height: 150.0,
              child: Row(
                children: [

                  Container(
                    height: 125.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(90.0)),
                      child: Image.network(
                          'https://images.unsplash.com/photo-1628005108941-81479befb3c8?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 220.0,
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Volunteer Teacher",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 220.0,
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Madumini Perera",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 220.0,
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Prefered area: Mathara",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //profile 2
            Container(
              margin: EdgeInsets.only(left: 10.0, top: 15.0, bottom: 0.0),
              // height: 150.0,
              child: Row(
                children: [

                  Container(
                    height: 125.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(90.0)),
                      child: Image.network(
                          'https://images.unsplash.com/photo-1628005108941-81479befb3c8?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 220.0,
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Volunteer Teacher",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 220.0,
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Madumini Perera",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 220.0,
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Prefered area: Mathara",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //profile 3
            Container(
              margin: EdgeInsets.only(left: 10.0, top: 15.0, bottom: 0.0),
              // height: 150.0,
              child: Row(
                children: [

                  Container(
                    height: 125.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(90.0)),
                      child: Image.network(
                          'https://images.unsplash.com/photo-1628005108941-81479befb3c8?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 220.0,
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Volunteer Teacher",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 220.0,
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Madumini Perera",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 220.0,
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Prefered area: Mathara",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //profile 4
            Container(
              margin: EdgeInsets.only(left: 10.0, top: 15.0, bottom: 0.0),
              // height: 150.0,
              child: Row(
                children: [

                  Container(
                    height: 125.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(90.0)),
                      child: Image.network(
                          'https://images.unsplash.com/photo-1628005108941-81479befb3c8?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 220.0,
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Volunteer Teacher",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 220.0,
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Madumini Perera",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 220.0,
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Prefered area: Mathara",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
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


//Schools
class tab2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:ListView(
          children: [
            Column(
              children: [


                //School1
                SizedBox(
                  child: InkWell(
                    child: Container(
                      // color:Colors.red,
                      child: Column(
                        children: [
                          Container(
                            height: 250.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.network(
                                  'https://i.pinimg.com/236x/37/bb/c4/37bbc42f4a1735ae7f484a668e682c80.jpg',
                                  width: 300.0,
                                  height: 300.0,
                                ),
                              ],
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                  text:TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Volunteer Teacher for English\n",
                                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 25.0),
                                        ),
                                        TextSpan(
                                          text: "Maliyadeva College, Idigasketiya\n"
                                              "Type 3 school\n",
                                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                                        ),
                                      ]
                                  )
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_){
                            return Signupscreen();
                          }
                      ));
                    },
                  ),
                ),
                Divider(thickness: 4.0,),


                //School2
                SizedBox(
                  child: InkWell(
                    child: Container(
                      // color:Colors.red,
                      child: Column(
                        children: [
                          Container(
                            height: 250.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(
                                  'https://i.pinimg.com/236x/37/bb/c4/37bbc42f4a1735ae7f484a668e682c80.jpg',
                                  width: 300.0,
                                  height: 300.0,
                                ),
                              ],
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                  text:TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Need of Desks and Chairs\n",
                                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 25.0),
                                        ),
                                        TextSpan(
                                          text: "Rahula College Wellawaya\n"
                                              "Type 3 school\n",
                                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                                        ),
                                      ]
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_){
                            return Signupscreen();
                          }
                      ));
                    },
                  ),
                ),
                Divider(thickness: 4.0,),



                //School3
                SizedBox(
                  child: InkWell(
                    child: Container(
                      // color:Colors.red,
                      child: Column(
                        children: [
                          Container(
                            height: 250.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(
                                  'https://i.pinimg.com/236x/37/bb/c4/37bbc42f4a1735ae7f484a668e682c80.jpg',
                                  width: 300.0,
                                  height: 300.0,
                                ),
                              ],
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                  text:TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Building for a Library\n",
                                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 25.0),
                                        ),
                                        TextSpan(
                                          text: "Ampara Central College\n"
                                              "Type 3 school\n",
                                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                                        ),
                                      ]
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_){
                            return Signupscreen();
                          }
                      ));
                    },
                  ),
                ),
                Divider(thickness: 4.0,),

                //School4
                SizedBox(
                  child: InkWell(
                    child: Container(
                      // color:Colors.red,
                      child: Column(
                        children: [
                          Container(
                            height: 250.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(
                                  'https://i.pinimg.com/236x/37/bb/c4/37bbc42f4a1735ae7f484a668e682c80.jpg',
                                  width: 300.0,
                                  height: 300.0,
                                ),
                              ],
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                  text:TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Volunteer sport coach\n",
                                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 25.0),
                                        ),
                                        TextSpan(
                                          text: "Pathiraja Vidyalaya, Anuradapura\n"
                                              "Type 1C school\n",
                                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                                        ),
                                      ]
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_){
                            return Signupscreen();
                          }
                      ));
                    },
                  ),
                ),
                Divider(thickness: 4.0,),


              ],
            ),
          ],
        )
    );
  }
}






//Companies (sponsors)
class tab3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:ListView(
          children: [
            Column(
              children: [

                //Sponsor 1
                SizedBox(
                  child: InkWell(
                    child: Container(
                      // color:Colors.red,
                      child: Column(
                        children: [
                          Container(
                            height: 250.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Image.network(
                                    'https://i.pinimg.com/236x/0d/c3/34/0dc3340f70aa89fc897fa67c36ecf254.jpg',
                                    width: 350.0,
                                    height: 350.0,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RichText(
                                  text:TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Gunasena Bookshop\n",
                                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 25.0),
                                        ),
                                        TextSpan(
                                          text: "No:125, Mathara Rd, Galle\n",
                                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                                        ),
                                      ]
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_){
                            return Signupscreen();
                          }
                      ));
                    },
                  ),
                ),
                Divider(thickness: 4.0,),



                //Sponsor 2
                SizedBox(
                  child: InkWell(
                    child: Container(
                      // color:Colors.red,
                      child: Column(
                        children: [
                          Container(
                            height: 250.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Image.network(
                                    'https://i.pinimg.com/236x/0d/c3/34/0dc3340f70aa89fc897fa67c36ecf254.jpg',
                                    width: 350.0,
                                    height: 350.0,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RichText(
                                  text:TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Yamaha Music Center\n",
                                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 25.0),
                                        ),
                                        TextSpan(
                                          text: "No 47, Union Place Colombo 7\n",
                                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                                        ),
                                      ]
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_){
                            return Signupscreen();
                          }
                      ));
                    },
                  ),
                ),
                Divider(thickness: 4.0,),



                //Sponsor 3
                SizedBox(
                  child: InkWell(
                    child: Container(
                      // color:Colors.red,
                      child: Column(
                        children: [
                          Container(
                            height: 250.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Image.network(
                                    'https://i.pinimg.com/236x/0d/c3/34/0dc3340f70aa89fc897fa67c36ecf254.jpg',
                                    width: 350.0,
                                    height: 350.0,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RichText(
                                  text:TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Abesekara Furniture\n",
                                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 25.0),
                                        ),
                                        TextSpan(
                                          text: "No 12. Colombo Rd, Anuradapura\n",
                                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                                        ),
                                      ]
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_){
                            return Signupscreen();
                          }
                      ));
                    },
                  ),
                ),
                Divider(thickness: 4.0,),

                //Sponsor 4
                SizedBox(
                  child: InkWell(
                    child: Container(
                      // color:Colors.red,
                      child: Column(
                        children: [
                          Container(
                            height: 250.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Image.network(
                                    'https://i.pinimg.com/236x/0d/c3/34/0dc3340f70aa89fc897fa67c36ecf254.jpg',
                                    width: 350.0,
                                    height: 350.0,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RichText(
                                  text:TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "DSI Super Sport\n",
                                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 25.0),
                                        ),
                                        TextSpan(
                                          text: "No 341/17, Negambo Rd, Paliyagoda\n",
                                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                                        ),
                                      ]
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_){
                            return Signupscreen();
                          }
                      ));
                    },
                  ),
                ),
                Divider(thickness: 4.0,),


              ],
            ),
          ],
        )
    );

  }
}