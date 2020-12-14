import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:searchable_dropdown/searchable_dropdown.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override


  final SliderA=Container(
    padding: EdgeInsets.all(5),
    height: 200,
    child: Carousel(

      autoplayDuration: Duration(seconds: 5),
      animationCurve: Curves.fastOutSlowIn,
      boxFit: BoxFit.fill,
      images: [
        AssetImage('assets/images/SliderA1.jpg'),
        AssetImage('assets/images/SliderAa2.jpg'),
        AssetImage('assets/images/SliderA3.jpg'),
        AssetImage('assets/images/SliderA4.jpg'),
      ],
      autoplay: true,
      indicatorBgPadding: 1.0,

      dotColor: Colors.white,
    ),

  );
  final bannerSliderA=Padding(
      padding: EdgeInsets.only(
        top: 150,
        left: 220,
      ),
      child: Container(
           width: 160,
          height:24,
          decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
        )
      ),
      child:Text("Welcome to NoDowry App",style: TextStyle(fontFamily: 'Cursive',fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)));

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("No Dowry",style: TextStyle(color: Colors.white),),

        actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20),
                child: GestureDetector(
                   onTap: (){},
                   child: Icon(Icons.chat,color: Colors.white,),
                ),
            ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: (){},
              child: Icon(Icons.notifications_rounded,color: Colors.white,),
            ),
          )
        ],
         toolbarHeight: 122,
        bottom: PreferredSize(
            child: Container(

              height: 55,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  FlatButton(child: Icon(Icons.account_circle,color: Colors.white,size: 55,),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15,5,15,0),
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.people,color: Colors.white),
                        Text("Partner",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15,5,15,0),
                    child: Column(
                      children: [
                        Icon(Icons.supervised_user_circle_sharp,color: Colors.white),
                        Text("Family",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(15,5,15,0),
                     child: Column(
                       children: [
                         Icon(Icons.panorama_horizontal,color: Colors.white),
                         Text("Astro",style: TextStyle(color: Colors.white),),
                       ],
                     ),
                   ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15,5,15,0),
                    child: Column(
                      children: [
                        Icon(Icons.work,color: Colors.white),
                        Text("Education",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15,5,15,0),
                    child: Column(
                      children: [
                        Icon(Icons.assignment_ind_sharp,color: Colors.white),
                        Text("Basic",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15,5,15,0),
                    child: Column(
                      children: [
                        Icon(Icons.stars_rounded,color: Colors.white),
                        Text("LifeStyle",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15,5,15,0),
                    child: Column(
                      children: [
                        Icon(Icons.image,color: Colors.white),
                        Text("Album",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            preferredSize: null

        ),
        iconTheme:IconThemeData(color: Colors.white)

      ),
       //-------------------------------------------------Drawer------------------------------------------
       drawer: Drawer(

          child: ListView(

              children: <Widget>[
                Container(
                  height: 170,
                  width: MediaQuery.of(context).size.width*0.85,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.orange,

                      image: DecorationImage(image: AssetImage('assets/images/SliderAa2.jpg'),
                          fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(Colors.orange, BlendMode.screen),

                    ),
                      ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/dp.jpg',),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Shivam",style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                        fontFamily: 'fantasy'),),
                        InkWell(
                          child: Text("Edit Profile",style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                          fontFamily: 'fantasy'),),
                          onTap: (){},
                        ),

                      ],
                    ),
                ),
                ),
                Container(

                  child:Column(
                    children:[
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  title: Text('Search'),
                  leading: Icon(Icons.search),
                ),
                ListTile(
                  title: Text('Search by Profile ID'),
                  leading: Icon(Icons.account_circle),
                ),
                ListTile(
                  title: Text('Advance Search'),
                  leading: Icon(Icons.screen_search_desktop),
                ),
                ListTile(
                  title: Text('Messenger'),
                  leading: Icon(Icons.chat),
                ),
                ExpansionTile(
                  title: Text('My Matches',),
                  leading: Icon(Icons.people),
                  children: [
                    ListTile(
                      title: Text('Desired Partner'),
                      trailing: IconButton(icon:Icon(Icons.arrow_forward_ios,),onPressed: (){},),
                    ),
                    ListTile(
                      title: Text('Just Joined'),
                      trailing: IconButton(icon:Icon(Icons.arrow_forward_ios,),onPressed: (){},),
                    ),
                    ListTile(
                      title: Text('Mutual Matches'),
                      trailing: IconButton(icon:Icon(Icons.arrow_forward_ios,),onPressed: (){},),
                    ),
                    ListTile(
                      title: Text('Premium Matches'),
                      trailing: IconButton(icon:Icon(Icons.arrow_forward_ios,),onPressed: (){},),
                    ),
                  ],

                  )]
                  )
                ),
                Container(
                  height: 200,
                  child: Text('Hello'),
                ),
              ],
          ),

       ),

       //--------------------------------------------------End Drawer----------------------------------

      //---------------------------------------------------carousel slider------------------------------
       body: Column(
         children: [
            Expanded(
              child: Stack(
                children: <Widget>[
                   SliderA,
                  bannerSliderA,

                 ],
              ),
            ),

         ],
       ),
      //------------------------------------------------------End Carousel ----------------------------------
     
    );
  }
}
