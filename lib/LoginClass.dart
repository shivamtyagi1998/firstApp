
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:no_dowry/HomeLayout.dart';
import 'package:no_dowry/SignUpNow.dart';

class MyApps extends StatefulWidget {
  @override
  _MyAppsState createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
 bool _obscureText=true;
  void _toggle()
  {
    setState(() {
      _obscureText=!_obscureText;
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(

        title: Text("Login",style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children:<Widget> [
              Padding(
                padding: EdgeInsets.fromLTRB(10,50,10,60),
                child: Center(
                  child: Image(
                    height: 80,
                    width: 300,
                    image: AssetImage('assets/images/google-wallet.png'),
                  ),
                ),
              ),
              Container(
                width:360,
                child: TextField(

                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.orange
                        )
                    ),
                    hintText:'Enter UserName',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 20
                ),
                width:360,
                child: TextField(

                  decoration: InputDecoration(

                      prefixIcon: Icon(Icons.lock_sharp),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Colors.orange
                          )
                      ),
                      hintText:'Enter Password',
                      suffixIcon: FlatButton(
                          onPressed: (_toggle),
                          child: Icon(Icons.remove_red_eye)
                      )
                  ),
                  obscureText: _obscureText,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                child: InkWell(
                  child: Text("Forget Password?",style: TextStyle(color: Colors.blueAccent),),
                  onTap: (){},

                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  top: 5,
                ),
                child: SizedBox(
                  width: 360,
                  child: RaisedButton(
                    color: Colors.orange,
                    onPressed: (){},
                    child: Text("LOGIN",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  top: 5,
                ),
                child: SizedBox(
                  width: 360,
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeLayout()));
                    },
                    child: Row(
                      children:<Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Image.asset('assets/images/googleimage1.png',height:20,)),
                        Padding(
                            padding: EdgeInsets.only(left: 80),
                            child: Text("Login With Google",style: TextStyle(color: Colors.black),)
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    100,5,0,0
                ),
                child: Row(
                    children:<Widget>[
                      Text("Don't have an account?"),
                      InkWell(
                        child: Text("Sign up now!",style: TextStyle(color: Colors.blueAccent),),
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => SignUpNow())
                          );
                        },

                      ),

                    ]
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
