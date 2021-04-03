
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:loginandregister/Screens/registerPage.dart';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 50.0,
            horizontal: 30.0
          ),
          child: Form(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 280.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/welcome.jpg'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(height: 30,),
                Text('Login',style: TextStyle(color: Colors.blue,fontSize: 48),),

                SizedBox(height: 30,),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[350]),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,width: 2.0)
                    ),
                    prefixIcon: Icon(Icons.supervised_user_circle_rounded,size: 28,),
                    fillColor: Colors.grey[350],
                    filled: true,
                    hintText: 'Username',
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[350]),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,width: 2.0)
                    ),
                    prefixIcon: Icon(Icons.lock_rounded,size: 28,),
                    fillColor: Colors.grey[350],
                    filled: true,
                    hintText: 'Password',
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(height: 35,),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: FlatButton(
                    color: Colors.blue,
                    onPressed: () {

                      // enter the code for backend process here
                    },
                    child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 22),),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  alignment: Alignment.centerRight,
                  child: new RichText(
                      text: new TextSpan(
                        children: [
                          new TextSpan(
                            text: "Forgot Password ?",
                            style: TextStyle(color: Colors.red),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {
                                _bottomSheet(context);
                              // code here for the forgot password part
                              },
                          ),
                        ]
                      )
                  ),
                ),
                SizedBox(height: 60,),
                Container(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an account ? ",
                          style: TextStyle(color: Colors.grey[600])
                        ),
                        TextSpan(
                          text: "Register here",
                          style: TextStyle(color: Colors.red),
                          recognizer: TapGestureRecognizer()
                            ..onTap = (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context){
                                  return registerPage();
                                }
                            ));
                            }
                        )
                      ]
                    )
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_bottomSheet(context){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext c){
         return Container(
             height: 250,
        //   decoration: BoxDecoration(
        //     border: Border.all(
        //       color: Colors.red[500],
        //     ),
        //     borderRadius: BorderRadius.all(Radius.circular(28.0)),
        //   ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Reset Options",style: TextStyle(fontSize: 22),),
              ),
              Divider(height: 3.0,),
              ListTile(
                leading: Icon(Icons.mail),   // leading can also hold image assets
                title: Text('Receive an email',style: TextStyle(fontSize: 18),),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Receive a text',style: TextStyle(fontSize: 18),),
              ),
              ListTile(
                leading: Icon(Icons.directions),
                title: Text('Check other options',style: TextStyle(fontSize: 18),),
              ),
            ],
          ),
        );
      }
  );
}
