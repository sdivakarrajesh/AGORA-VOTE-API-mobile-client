import 'package:agora_mobile/createElection_name.dart';
import 'package:agora_mobile/createElection_date.dart';
import 'package:agora_mobile/createElection_howSecret.dart';
import 'package:agora_mobile/createElection_votingAlgorithm.dart';
import 'package:agora_mobile/createElection_addCandidate.dart';

import 'package:agora_mobile/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder>{
        'inputScreen': (BuildContext context) => MyHomePage(),
        'dashboardScreen': (BuildContext context) => Dashboard(),
        'createElection_NameScreen':(BuildContext context)=> CreateElection_Name(),
        'createElection_DateScreen':(BuildContext context)=> CreateElection_Date(),
        'createElection_AddCandiateScreen':(BuildContext context)=> CreateElection_AddCandidate(),
        'createElection_VotingAlgorithmScreen':(BuildContext context)=> CreateElection_VotingAlgorithm(),
        'createElection_HowSecretScreen':(BuildContext context)=> CreateElection_HowSecret(),

      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
    
  Widget build(BuildContext context) {

        final double statusbarHeight = MediaQuery
        .of(context)
        .padding
        .top;
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
  statusBarColor: Color(0xFF16A458),
  statusBarIconBrightness: Brightness.light, //or set color with: Color(0xFF0000FF)
));

    return Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: statusbarHeight),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment
              .bottomCenter, // 10% of the width, so there are ten blinds.
          colors: [
            const Color(0xFF16A458),
            const Color(0xFF45E690)
          ], // whitish to gray
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
              top: 10.0,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset("agora.png"),
                  ),
                  Text(
                    "AGORA VOTE",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 40.0),
                  )
                ],
              )),
          Center(
              child: Card(
                  elevation: 5.0,
                  margin: EdgeInsets.only(
                      top: 80.0, bottom: 30.0, left: 15.0, right: 15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Container(
                                    color: Colors.white,
                                    child: Center(
                                      child: Text(
                                        "Sign In",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          color: Color(0xFF16A458),
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Container(
                                  color: Colors.white,
                                  child: Center(
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                  )),
                            ))
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                            style: BorderStyle.none,
                                            color: Color(0xFF16A458))),
                                    hintText: "Username",
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 30.0, vertical: 10.0)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal:20.0,vertical: 10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                            style: BorderStyle.none,
                                            color: Color(0xFF16A458))),
                                    hintText: "Password",
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 30.0, vertical: 10.0)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal:20.0,vertical:10.0),
                              child: RaisedButton(
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding:
                                    EdgeInsets.symmetric(horizontal: 100.0),
                                color: Color(0xFFFFCD00),
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Dashboard()));
                                },
                              ),
                            ),
                            Text(
                              "OR",
                              style: TextStyle(fontWeight: FontWeight.w100),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal:20.0,vertical: 10.0),
                              child: RaisedButton(
                                child: Text(
                                  "Sign in with Facebook",
                                  style: TextStyle(color: Colors.white),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 50.0),
                                color: Color(0xFF3B5998),
                                onPressed: () {},
                              ),
                            ),
                            Text(
                                "An open source initiative with \u2764 by AOSSIE",style: TextStyle(
                                  fontSize: 10.0
                                ),)
                          ],
                        ),
                      )
                    ],
                  )))
        ],
      ),
    ));
  }
}
