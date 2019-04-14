import 'package:agora_mobile/createElection_name.dart';
import 'package:agora_mobile/dashCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.bottom, SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white,
      statusBarIconBrightness:
          Brightness.light, //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Dashboard",
          style: TextStyle(fontSize: 30.0, color: Color(0xFF0B8D49)),
        ),
      ),
      body: Column(
        children: <Widget>[
          DashCard(
            start: Color(0xFF15DEC3),
            end: Color(0xFF3DEBCE),
            title: "Finished",
            value: "1",
          ),
          DashCard(
            start: Color(0xFFFC5280),
            end: Color(0xFFFD7756),
            title: "Total",
            value: "5",
          ),
          DashCard(
            start: Color(0xFFFF5A3C),
            end: Color(0xFFFF9042),
            title: "Pending",
            value: "3",
          ),
          DashCard(
            start: Color(0xFF457BFF),
            end: Color(0xFF1F99FF),
            title: "Active",
            value: "2",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          CreateElection_Name()));
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xFFFFCD00),
        elevation: 5.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF16A458),
        notchMargin: 5.0,
        // shape: AutomaticNotchedShape(
        //   RoundedRectangleBorder(),
        //   StadiumBorder(side: BorderSide())
        // ),
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.menu,color: Colors.white),
              ),
                            Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.account_circle,color: Colors.white,),
              ),
                            Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.help_outline,color: Colors.white,)
              )

              
              
              
            ],
          ),
          
        ),
      ),
    );
  }
}
