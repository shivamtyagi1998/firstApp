
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:no_dowry/LoginClass.dart';
import 'package:no_dowry/SignUpNow3.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
class SignUpNow2 extends StatefulWidget {
  @override
  _SignUpNow2State createState() => _SignUpNow2State();
}

class _SignUpNow2State extends State<SignUpNow2> {
  List<String> _doshList=['Manglik','Non-Manglik','Partial-Manglik','Not-Applicable'];
  List<String> _casteList=['Tyagi','Brahmin-Tyagi','Kuli Maratha','Aaru Nattu vellala','Adi Karnataka','Agamudayar','Agarwal','Agrahari','Agri','Aheriya','Arora',
                           'Bairwa','Balai','Bari','Barnwal','Shetty','Chambhar','Nair','Darji','Desikar','Dumal','Dhimaan','Sood','Kaur','Kumar','Vats','Saini','Bhatnagar',
                           'Arya','Singh','Malik','Khan','Ali','Rawat','Kamboz','Rathi'];
  List<String> _anyDisabilityList=['Yes','No'];
  List<String> _disabilityList=['Physically Handicapped from Birth','Physically Handicapped due to accident','Visually','Dwarfism','Hearing Impairment','Mentally Challenged','other'];
  String _dosh;
  String _anyDisability,_disabilityCheck;
  String _disability;
  String _caste;
  var _subCaste =TextEditingController();
  var _gothram =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: IconThemeData( color: Colors.white) ,
        title: Text("Sign Up",style: TextStyle(color: Colors.white),),
      ),

      body: SingleChildScrollView(
        child: Column(
          children:<Widget> [
            //---------------------------------------image on top-----------------------------------------
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 40),
                width: 300,
                child: Image(image: AssetImage("assets/images/Signup.png"),),
              ),
            ),


            //--------------------------------------------Dosh DropDown-----------------------------------------------------------
              Container(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: 'Dosh',
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.always
                  ),
                  hint: Text(_doshList[0]),
                  isExpanded: true,
                  value: _dosh,
                  onChanged: (newValue){
                    setState(() {
                      _dosh=newValue;
                    });
                  },
                    items: _doshList.map((item) {
                      return DropdownMenuItem(
                        child: Text(item),
                          value: item,
                      );
                    }).toList(),

                ),
              ),
            //--------------------------------------------Any Disability----------------------------------------------------------
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: DropdownButtonFormField(

                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Any Disability',
                        floatingLabelBehavior: FloatingLabelBehavior.always
                      ),
                      hint: Text(_anyDisabilityList[1]),
                      value: _anyDisability,

                      items: _anyDisabilityList.map((item){
                        return DropdownMenuItem(
                            child: Text(item),
                            value: item,
                        );
                      }).toList(),
                    onChanged: (newValue)
                    {
                      setState(() {
                        _anyDisability=newValue;
                        _disabilityCheck=newValue;
                      });
                    },

                  ),
                ),
            //------------------------------------------DisabilityList-----------------------------------------------------------
            if(_disabilityCheck=='Yes'&&_disabilityCheck!='No')
              Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: DropdownButtonFormField(
                  value: _disability,
                  decoration: InputDecoration(
                      hintText: _disabilityList[0],
                      filled: true,
                      labelText: 'Disability Type',
                      floatingLabelBehavior: FloatingLabelBehavior.always
                  ),
                  items: _disabilityList.map((item){
                    return DropdownMenuItem(
                      child: Text(item),
                      value: item,
                    );
                  }).toList(),
                  onChanged: (newValue)
                  {
                    setState(() {
                      _disability=newValue;
                    });
                  }
              ),
            ),
            //--------------------------------------------Caste-----------------------------------------------------------------
             Container(
               padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
               child: SearchableDropdown(
                  displayClearIcon: false,
                  dialogBox: false,
                  isExpanded: true,
                   searchHint: 'Select Caste',
                  menuConstraints: BoxConstraints.tight(Size.fromHeight(350)),
                  hint: 'Select caste',
                   value: _caste,
                   items: _casteList.map((item) {
                     return DropdownMenuItem(

                         child: Text(item),
                         value: item,
                     );
                   }).toList(),
                   onChanged: (newValue)
                   {
                     setState(() {
                       _caste=newValue;
                     });
                   }
               ),
             ),
            
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: TextFormField(
                  controller: _subCaste,
                   decoration: InputDecoration(
                     prefixIcon: Icon(Icons.person),

                     suffixIcon:
                     IconButton(
                         onPressed: (){
                              _subCaste.clear();
                         },
                         icon: Icon(Icons.clear),
                     ),
                     hintText: 'Sub-Caste (Optional)',
                   ),
                ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextFormField(
                controller: _gothram,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),

                  suffixIcon:
                  IconButton(
                    onPressed: (){
                      _gothram.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                  hintText: 'Gothram (Optional)',
                ),
              ),
            ),
            //--------------------------------------------Buttons-----------------------------------------------------------------
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Text("Step 2/5",style: TextStyle(fontSize: 15,color: Colors.grey),),

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
                         Navigator.push(context, MaterialPageRoute(builder: (context) =>SignUpNow3()));
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
      ) ,

    );
  }
}
