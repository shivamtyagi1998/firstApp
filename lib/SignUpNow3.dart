
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:no_dowry/LoginClass.dart';
import 'package:no_dowry/SignUpNow4.dart';

class SignUpNow3 extends StatefulWidget {
  @override
  _SignUpNow3State createState() => _SignUpNow3State();
}

class _SignUpNow3State extends State<SignUpNow3> {
  List<String> _maritalStatusList=['Un-Married','Married','Divorced','Awaiting Divorce','Annuled','Widowed'];
  List<String> _childrenList=['0','1','2','3','4','more than 4'];
  List<String> _familyStatusList=['Middle Class','Upper Middle Class','Rich','Affluent'];
  List<String> _familyValueList=['Orthodox','Traditional','Moderate','Liberal'];
  List<String> _feetList=['4','5','6','7'];
  List<String> _inchList=['0','1','2','3','4','5','6','7','8','9','10','11','12'];
  List<String> _familyTypeList=['Joint','Nuclear'];
  String _familyStatus,_familyType,_familyValue;
  String _inch,_feet;
  String _children;
  String _maritalStatus;
  String _maritalCheck;
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
             //----------------------------------------------------------------Mid Section----------------------------------
            Container(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  filled: true,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Marital Status',
                ),
                 value: _maritalStatus,
                  hint: Text(_maritalStatusList[1]),
                  items: _maritalStatusList.map((item) {
                     return DropdownMenuItem(
                         child: Text(item),
                       value: item,
                     );
                  }).toList(),
                  onChanged: (newValue){
                     setState(() {
                       _maritalStatus=newValue;
                       _maritalCheck=newValue;
                     });
                  }
              ),
            ),

             //----------------------------------------------------------------Children----------------------------------
            if(_maritalCheck!='Un-Married')
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Children',
                  ),
                  value: _children,
                  hint: Text(_childrenList[1]),
                  items: _childrenList.map((item) {
                    return DropdownMenuItem(
                      child: Text(item),
                      value: item,
                    );
                  }).toList(),
                  onChanged: (newValue){
                    setState(() {
                      _children=newValue;
                    });
                  }
              ),
            ),
            //---------------------------------------------------------Family Status-------------------------------------------------
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Family Status',
                  ),
                  value: _familyStatus,
                  hint: Text(_familyStatusList[0]),
                  items: _familyStatusList.map((item) {
                    return DropdownMenuItem(
                      child: Text(item),
                      value: item,
                    );
                  }).toList(),
                  onChanged: (newValue){
                    setState(() {
                      _familyStatus=newValue;
                    });
                  }
              ),
            ),

            //---------------------------------------------------------Family Type-------------------------------------------------
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Family Type',
                  ),
                  value: _familyType,
                  hint: Text("Optional"),
                  items: _familyTypeList.map((item) {
                    return DropdownMenuItem(
                      child: Text(item),
                      value: item,
                    );
                  }).toList(),
                  onChanged: (newValue){
                    setState(() {
                      _familyType=newValue;
                    });
                  }
              ),
            ),

            //---------------------------------------------------------Family value-------------------------------------------------
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Family value',
                  ),
                  value: _familyValue,
                  hint: Text("Optional"),
                  items: _familyValueList.map((item) {
                    return DropdownMenuItem(
                      child: Text(item),
                      value: item,
                    );
                  }).toList(),
                  onChanged: (newValue){
                    setState(() {
                      _familyValue=newValue;
                    });
                  }
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text("Height",style: TextStyle(color: Colors.grey,fontSize: 15),),
            ),
            Row(

              mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  width: 175,
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'Feet',
                      ),
                      value: _feet,
                      hint: Text(_feetList[0]),
                      items: _feetList.map((item) {
                        return DropdownMenuItem(
                          child: Text(item),
                          value: item,
                        );
                      }).toList(),
                      onChanged: (newValue){
                        setState(() {
                          _feet=newValue;
                        });
                      }
                  ),
                ),
                Container(
                  width: 175,
                  
                  padding: EdgeInsets.only(bottom: 20),
                  child: DropdownButtonFormField(
                      
                      decoration: InputDecoration(
                        
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'Inch',
                      ),
                      value: _inch,
                      hint: Text(_inchList[0]),
                      items: _inchList.map((item) {
                        return DropdownMenuItem(
                          child: Text(item),
                          value: item,
                        );
                      }).toList(),
                      onChanged: (newValue){
                        setState(() {
                          _inch=newValue;
                        });
                      }
                  ),
                ),



              ],
            ),

            //---------------------------------------------------------------Buttons----------------------------------------
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Text("Step 3/5",style: TextStyle(fontSize: 15,color: Colors.grey),),

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
                           Navigator.push(context, MaterialPageRoute(builder: (context) =>SignUpNow4()));
                      },
                      child: Text("Continue>>",style: TextStyle(color: Colors.white),),
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
