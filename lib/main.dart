import 'package:flutter/material.dart';
import 'package:no_dowry/LoginClass.dart';

void main() {
   runApp(
       MaterialApp(
         debugShowCheckedModeBanner: false,
           theme: ThemeData(
             primarySwatch: Colors.orange,
             accentColor: Colors.orange
           ),
           home:MyApps()
       )
   );
}
