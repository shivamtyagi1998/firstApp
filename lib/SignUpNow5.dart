import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:no_dowry/LoginClass.dart';
import 'package:no_dowry/ShowInformation.dart';

class SignUpNow5 extends StatefulWidget {
  @override
  _SignUpNow5State createState() => _SignUpNow5State();
}

class _SignUpNow5State extends State<SignUpNow5> {
  TextEditingController _password=new TextEditingController();
  TextEditingController _confirmPassword=new TextEditingController();

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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Sign Up",style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 40),
                width: 300,
                child: Image(image: AssetImage("assets/images/Signup.png"),),
              ),
            ),
            //-----------------------------------------------------------------Name----------------------------------
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: TextField(

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 3,
                          color: Colors.orange
                      )
                  ),
                  hintText:'Name',
                ),
              ),

            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextField(

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_android),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 3,
                          color: Colors.orange
                      )
                  ),
                  hintText:'Mobile',
                ),
              ),

            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextField(

                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_android),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 3,
                          color: Colors.orange
                      )
                  ),
                  hintText:'Alternate Mobile (Optional)',
                ),
              ),

            ),

            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: TextField(
                 controller: _password,
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
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextFormField(
                controller: _confirmPassword,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_sharp),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.orange
                        )
                    ),

                    hintText:'Confirm Password',
                    suffixIcon: FlatButton(
                        onPressed: (_toggle),
                        child: Icon(Icons.remove_red_eye)
                    )
                ),
                obscureText: _obscureText,
              ),

            ),

            //---------------------------------------------------------------Buttons----------------------------------------
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Text("Step 5/5",style: TextStyle(fontSize: 15,color: Colors.grey),),

            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 180,
                    child: RaisedButton(
                      color: Colors.orange,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>MyApps() )
                        );
                      },
                      child: Text("<< Back To Login",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  SizedBox(

                    width: 180,
                    child: RaisedButton(
                      color: Colors.orange,
                      onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> ShowInformation()));
                      },
                      child: Text("Submit",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              )
              ,
            )


          ],
        ),
      ),
    );
  }
}
