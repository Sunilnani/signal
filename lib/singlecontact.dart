import 'package:flutter/material.dart';
import 'package:flutter_signal/main.dart';
class SingleContact extends StatefulWidget {
  SingleContact({this.personname,this.color,this.chatdate,this.short_name});
  final  String personname ;
  final Color color;
  final String chatdate;
  final String short_name;
  @override
  _SingleContactState createState() => _SingleContactState();
}

class _SingleContactState extends State<SingleContact> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(
                backgroundColor:Colors.white,
                radius: 15,
                child: Text(widget.short_name,style: TextStyle(fontSize: 15),),
              ),
              SizedBox(width: 8,),
              Flexible(child: Text(widget.personname,style: TextStyle(fontSize: 16),))
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.videocam_outlined),
              onPressed: () {},
            ), //IconButton
            IconButton(
              icon: Icon(Icons.call),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),//IconButton
          ], //<Widget>[]
          backgroundColor: widget.color,
          elevation: 20.0,
          leading: InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyApp(
                    ),
                  ),
                );
              },
              child: Icon(Icons.arrow_back))
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 25,),
                CircleAvatar(
                  backgroundColor:widget.color,
                  child: Text("LP",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w600),),
                  radius: 60,
                ),
                SizedBox(height: 10,),
                Text(widget.personname,style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.w500),),
                SizedBox(height: 5,),
                Text("+91 9876543210"),
                SizedBox(height: 8,),
                //Padding(
                  //padding: const EdgeInsets.symmetric(horizontal:90.0),
                  //child: Row(
                   // children: [
                     // Icon(Icons.perm_contact_cal_outlined,size: 15,color: Colors.black54,),
                      //Text("Laxmi Prasad is on Signal!")
                    //],
                  //),
                //),
                Text("${widget.personname} is on Signal",style: TextStyle(color: Color(0xFF6b6b6b)),),
                SizedBox(height: 15,),
                Text("wed, ${widget.chatdate}, 2021",style: TextStyle(color: Color(0xFF6b6b6b)),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15.0),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black12,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical:8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Welcome to Signal"),
                                Text("jan 20, 06:30")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color:widget.color,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical:8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Thank you signal"),
                                Text("jan 20, 06:30")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:158.0,left: 10,right: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          height: 46,
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.chat_bubble_outline_outlined),
                                suffixIcon: Icon(Icons.camera_alt_outlined),
                                hintText: "Signal message",
                                hintStyle: TextStyle(color: Colors.black12),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(color: Colors.grey)
                                )
                            ),
                          ),
                        ),
                      ),
                      Container(height: 50,
                        child: FloatingActionButton(onPressed: (){

                        } ,  child: Icon(Icons.add ,size: 30,),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
