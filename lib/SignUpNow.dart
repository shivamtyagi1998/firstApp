import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:no_dowry/SignUpNow2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpNow extends StatefulWidget {
  @override
  _SignUpNowState createState() => _SignUpNowState();
}

class _SignUpNowState extends State<SignUpNow> {
  Future<String> _setInfoSignUpNow(String selectedItem) async {
    SharedPreferences pref1 = await SharedPreferences.getInstance();
    pref1.setString('selectedItem', _selectedItem);
    return selectedItem;
  }

  TextEditingController selDate = new TextEditingController();
  List<String> _profileFor = [
    'Self',
    'Brother',
    'Son',
    'Sister',
    'Daughter',
    'Relative',
    'Friend'
  ];
  List<String> _genderSelect = ['Male', 'Female', 'Transgender'];
  List<String> _religionList = [
    'Hindu',
    'Muslim',
    'Buddhist',
    'Parsi',
    'Christian',
    'Sikh',
    'Bahai',
    'Jain',
    'Jewish'
  ];
  List<String> _languageList = [
    'Hindi',
    'English',
    'Haryanvi',
    'Punjabi',
    'Rajasthani',
    'Urdu',
    'French',
    'Gujrati',
    'Garhwali',
    'Himachali',
    'Kashmiri',
    'Khandesi',
    'Arunachali',
    'Assamese',
    'Awadhi',
    'Bengali',
    'Brij',
    'Bhojpuri',
    'Bihari'
  ];
  String _selectedItem;
  String _gender;
  String _religion;
  String _language;
  String _checkForGender;
  DateTime _date = new DateTime(2003);

  @override
  Widget build(BuildContext context) {
    String _updatedFormat = new DateFormat.yMMMd().format(_date);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Sign Up",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //---------------------------------------image on top-----------------------------------------
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 40),
                width: 300,
                child: Image(
                  image: AssetImage("assets/images/Signup.png"),
                ),
              ),
            ),
            //--------------------------------------Profile for Dropdown---------------------------------
            Container(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: Column(
                children: <Widget>[
                  DropdownButtonFormField(
                    decoration: InputDecoration(
                      labelText: 'Profile For',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      filled: true,
                    ),
                    hint: Text(_profileFor[0]),
                    isExpanded: true,
                    value: _selectedItem,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedItem = newValue;
                        _checkForGender = newValue;
                      });
                    },
                    items: _profileFor.map((items) {
                      return DropdownMenuItem(
                        child: Text(items),
                        value: items,
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            //--------------------------------------------------gender dropdown---------------------------------------------------------

            GenderWidget(),
            //--------------------------------------------------------Religion dropdown----------------------------------------------
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: 'Religion',
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  hint: Text(_religionList[0]),
                  value: _religion,
                  items: _religionList.map((items) {
                    return DropdownMenuItem(
                      child: Text(items),
                      value: items,
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _religion = newValue;
                    });
                  }),
            ),

            //-------------------------------------------------------Mother Tongue Dropdown-------------------------------------------

            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: 'Mother Tongue',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    filled: true,
                  ),
                  value: _language,
                  hint: Text(_languageList[0]),
                  items: _languageList.map((items) {
                    return DropdownMenuItem(
                      child: Text(items),
                      value: items,
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _language = newValue;
                    });
                  }),
            ),
            //-------------------------------------------------------------Date Picker---------------------------------------------
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Row(
                children: <Widget>[
                  FlatButton(
                      child: Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.orange,
                      ),
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime(2003),
                          firstDate: DateTime(1988),
                          lastDate: DateTime(2003),
                        ).then((val) {
                          setState(() {
                            _date = val;
                            _updatedFormat =
                                new DateFormat.yMMMd().format(_date);
                          });
                        });
                        selDate.text = _updatedFormat;
                      }),
                  Flexible(
                    child: TextFormField(
                      enabled: true,
                      showCursor: false,
                      controller: selDate,
                      decoration: InputDecoration(
                          hintText: 'ex.. Nov 12,2002',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Date of birth'),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Text(
                "Step 1/5",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
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
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "<< Back To Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 180,
                    child: RaisedButton(
                      color: Colors.orange,
                      onPressed: () {
                        this.Continuee();
                      },
                      child: Text(
                        "Continue>>",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget GenderWidget() {
    if (_checkForGender == 'Relative' ||
        _checkForGender == 'Self' ||
        _checkForGender == 'Friend') {
      return Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: DropdownButtonFormField(
          decoration: InputDecoration(
            labelText: 'Gender',
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
          hint: Text(_genderSelect[0]),
          value: _gender,
          items: _genderSelect.map((items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (newValue) {
            setState(() {
              _gender = newValue;
            });
          },
        ),
      );
    } else {
      return SizedBox();
    }
  }

  void Continuee()async {
    SharedPreferences pref1 = await SharedPreferences.getInstance();
    print(_selectedItem);

    pref1.setString('profile', _selectedItem);
    pref1.setString('gender', _gender);
    pref1.setString('religion', _religion);
    pref1.setString('mother', _language);
    pref1.setString('dOB', selDate.text);

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignUpNow2()));
  }
}
