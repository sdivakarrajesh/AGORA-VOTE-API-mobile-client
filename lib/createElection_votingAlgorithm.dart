import 'package:agora_mobile/createElection_date.dart';
import 'package:agora_mobile/createElection_howSecret.dart';
import 'package:flutter/material.dart';

class CreateElection_VotingAlgorithm extends StatefulWidget {
  @override
  _CreateElection_VotingAlgorithmState createState() =>
      _CreateElection_VotingAlgorithmState();
}

class _CreateElection_VotingAlgorithmState
    extends State<CreateElection_VotingAlgorithm> {
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
      body: Stack(children: <Widget>[
        Positioned(
            left: 20.0,
            bottom: 20.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              child: Icon(
                Icons.navigate_before,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFFCD00),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                        offset: Offset(1, 5))
                  ]),
            )),
        ListView(children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50.0),
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
                          "4",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 15.0),
                        ),
                      )),
                  Text(
                    "  Voting Algorithm",
                    style: TextStyle(
                        color: Color(0xFF0B8D49),
                        fontWeight: FontWeight.w700,
                        fontSize: 25.0),
                  ),
                  SizedBox(
                    height: 70.0,
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
                              style: BorderStyle.none,
                              color: Color(0xFF16A458))),
                      hintText: "Voting Algorithm",
                      filled: true,
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      fillColor: Colors.grey[100],
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10.0)),
                ),
              ),
            ],
          ),
        ]),
      ]),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Continue"),
        backgroundColor: Color(0xFFFFCD00),
        icon: Icon(Icons.navigate_next),
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => CreateElection_HowSecret()));
        },
      ),
    );
  }
}
