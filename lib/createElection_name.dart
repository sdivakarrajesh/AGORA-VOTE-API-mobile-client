import 'package:agora_mobile/createElection_date.dart';
import 'package:flutter/material.dart';

class CreateElection_Name extends StatefulWidget {
  @override
  _CreateElection_NameState createState() => _CreateElection_NameState();
}

class _CreateElection_NameState extends State<CreateElection_Name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(
          Icons.sort,
          color: Color(0xFF0B8D49),
          size: 30.0,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Create Election",
          style: TextStyle(fontSize: 30.0, color: Color(0xFF0B8D49)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 70.0,
            width: 70.0,
            child: Image.asset("agora.png"),
          ),
          SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF0B8D49),
                  ),
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 15.0),
                    ),
                  )),
              Text(
                "  Election Details",
                style: TextStyle(
                    color: Color(0xFF0B8D49),
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0),
              ),
              SizedBox(
                height: 50.0,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                          style: BorderStyle.none, color: Color(0xFF16A458))),
                  hintText: "Election Name",
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              maxLines: 7,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                          style: BorderStyle.none, color: Color(0xFF16A458))),
                  hintText: "Election Details",
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0)),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Continue"),
        backgroundColor: Color(0xFFFFCD00),
        icon: Icon(Icons.navigate_next),
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => CreateElection_Date()));
        },
      ),
    );
  }
}
