import 'package:agora_mobile/createElection_date.dart';
import 'package:agora_mobile/createElection_votingAlgorithm.dart';
import 'package:flutter/material.dart';

class CreateElection_AddCandidate extends StatefulWidget {
  @override
  _CreateElection_AddCandidateState createState() =>
      _CreateElection_AddCandidateState();
}

class _CreateElection_AddCandidateState
    extends State<CreateElection_AddCandidate> {
  List<String> userlist = ["Candidate 1", "Candidate 2", "Candidate 3"];
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
              SizedBox(height: 30.0),
              Container(
                height: 70.0,
                width: 70.0,
                child: Image.asset("agora.png"),
              ),
              SizedBox(height: 20.0),
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
                          "3",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 15.0),
                        ),
                      )),
                  Text(
                    "  Add Candidates",
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
                              style: BorderStyle.none,
                              color: Color(0xFF16A458))),
                      hintText: "Candidate Name",
                      filled: true,
                      fillColor: Colors.grey[100],
                      suffixIcon: Icon(Icons.add),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10.0)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: userlist.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: CandidateCard(
                            serial: (index + 1).toString(),
                            name: userlist[index],
                          ));
                    }),
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
              builder: (BuildContext context) =>
                  CreateElection_VotingAlgorithm()));
        },
      ),
    );
  }
}

class CandidateCard extends StatelessWidget {
  String serial;
  String name;
  CandidateCard({this.serial, this.name});

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Card(
          elevation: 5.0,
          margin: EdgeInsets.all(5.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "$serial. $name",
                  style: TextStyle(
                      color: Color(0xFF16A458), fontWeight: FontWeight.w700),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {},
              )
            ],
          )),
    );
  }
}
