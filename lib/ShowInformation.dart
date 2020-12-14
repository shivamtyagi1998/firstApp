import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:no_dowry/SignUpNow.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:async/async.dart';

class ShowInformation extends StatefulWidget {
  @override
  _ShowInformationState createState() => _ShowInformationState();
}

class _ShowInformationState extends State<ShowInformation> {



  @override
  void initState() {
    super.initState();
    this._getInfoSignUpNow();
  }

 // ignore: missing_return
   Future<String> _getInfoSignUpNow() async{
    SharedPreferences pref1 = await SharedPreferences.getInstance();
    var profgetvalue = pref1.getString('profile');
    var getGender=pref1.getString('gender');
    var getReligion=pref1.getString('religion');
    var getLanguage=pref1.getString('mother');
    var getDOB=pref1.getString('dOB');

    print(profgetvalue);
    setState(() {
      profile = profgetvalue;
      gender=getGender;
      religion=getReligion;
      language=getLanguage;
      dOB=getDOB;
    });
  }

  String profile,gender,religion,language,dOB;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Information",style: TextStyle(color: Colors.white),),

      ),
      body: Column(

        children: <Widget>[
          Container(
               padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Align(
             alignment: Alignment.center,
              child: Text("User Information",style: TextStyle(fontSize: 30),textAlign: TextAlign.center,))),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GetGenderWidget(),
                  Row(
                    children: [
                      Text('Religion: ',style: TextStyle(fontSize: 18),),
                      Text('$religion'),
                    ],
                  ),


                ],
              ),

            ),
          ),
          Align(

            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(

                  children: [
                    Text('Language: ',style: TextStyle(fontSize: 18,),),
                    Text('$language'),
                  ],
                ),
                Row(
                  children: [
                    Text('DOB: ',style: TextStyle(fontSize: 18),),
                    Text('$dOB'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget GetGenderWidget()
  {
    if(profile=='Brother'||profile=='Son')
      {
        return Row(
          children: [
            Text('Gender: ',style: TextStyle(fontSize: 18),),
            Text('Male'),
          ],
        );
      }
    else if(profile=='Sister'||profile=='Daughter')
      {
        return Row(
          children: [
            Text('Gender: ',style: TextStyle(fontSize: 18),),
            Text('Female'),
          ],
        );
      }
    else
      {
        return Row(
          children: [
            Text('Gender: ',style: TextStyle(fontSize: 18),),
            Text('$gender'),
          ],
        );
      }
  }
}
