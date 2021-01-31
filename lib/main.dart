import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_signal/singlecontact.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String>profile =["LP","S","PS","KS","PS","C","d","LP","S","PS","KS","P","C",];
  List<String> name=["prasad","Sunil","prashanth sir","karthik Sir","pranay sir","chandu","deepika","Lakshmi prasad","Sunil","prashanth sir","karthik Sir","pranay sir","pranay sir",];
  List<String> message=["hiii prasad whatsapp delete karo","hii sunil","good morning sir","good afternoon sir","good evening sir","good night chandu","use signal","hiii prasad whatsapp delete karo","hii sunil","good morning sir","good afternoon sir","good evening sir","pranay sir",];
  List<String> date=["jan 28","jan 27","jan 27","jan 26","jan 22","jan 22","jan 1","jan 28","jan 27","jan 27","jan 26","jan 22","jan 22",];
  List <Color>colors = [Colors.red, Colors.green, Colors.yellow,Colors.pinkAccent,Colors.green,Colors.orange,Colors.red, Colors.green, Colors.yellow,Colors.pinkAccent,Colors.green,Colors.orange,Colors.blue];
  Color randomGenerator() {
    return colors[new Random().nextInt(colors.length)];
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Signal",style: TextStyle(color: Colors.black,),),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search,color: Colors.black,),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ), //IconButton
            IconButton(
              icon: Icon(Icons.settings,color: Colors.black,),
              tooltip: 'Setting Icon',
              onPressed: () {},
            ), //IconButton
          ], //<Widget>[]
          backgroundColor: Colors.white,
          elevation: 20.0,
          leading: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("img/profile.jpg"),
                  radius: 20,
                ),
              ),
            ],
          ),
          brightness: Brightness.dark,
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount:name.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: () {},
                        child: SignalContacts(
                          profile: profile[index],
                          name: name[index],
                          message: message[index],
                          date: date[index],
                          colors: randomGenerator(),

                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: null,
              onPressed: (){},
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              heroTag: null,
              onPressed: (){},
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
              backgroundColor: Color(0xFF2c6bee),
            ),
          ],
        )
      ),
    );
  }
}

class SignalContacts extends StatelessWidget {
  const SignalContacts({
    this.profile,
    this.name,
    this.message,
    this.date,
    this.colors,
    this.personname,
    this.color,
    this.chatdate,
    this.short_name,
  }) ;
  final String profile;
  final String name;
  final String message;
  final String date;
  final Color colors;
  final String personname;
  final Color color;
  final String chatdate;
  final String short_name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SingleContact(personname: name,color:colors,chatdate:date,short_name: profile,
                      ),
                    ),
                  );
                },
                child: Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor:colors,
                        radius: 25,
                        child: Text(profile),
                      ),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name,style: TextStyle(color: Colors.black87,fontSize: 17,fontWeight: FontWeight.w400),),
                          SizedBox(height: 3,),
                          Text(message,style: TextStyle(color: Colors.black38,fontSize: 15,fontWeight: FontWeight.w300),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Text(date),

            ],
          ),
        ),
        SizedBox(height: 5,)
      ],
    );
  }
}

