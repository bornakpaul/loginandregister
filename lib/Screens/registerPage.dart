import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:loginandregister/Screens/loginPage.dart';

class registerPage extends StatefulWidget {
  @override
  _registerPageState createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
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
                Text('Register',style: TextStyle(color: Colors.blue,fontSize: 48),),

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
                    hintText: 'Confirm Password',
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
                    child: Text('Register',style: TextStyle(color: Colors.white,fontSize: 22),),
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                    alignment: Alignment.center,
                    child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "Already have an account ? ",
                                  style: TextStyle(color: Colors.grey[600])
                              ),
                              TextSpan(
                                  text: "Login here",
                                  style: TextStyle(color: Colors.red),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = (){
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context){
                                            return loginPage();
                                          },
                                      ));
                                    },
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
