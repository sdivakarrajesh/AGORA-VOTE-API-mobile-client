import 'package:agora_mobile/createElection_date.dart';
import 'package:agora_mobile/dashboard.dart';
import 'package:flutter/material.dart';

class CreateElection_HowSecret extends StatefulWidget {
  @override
  _CreateElection_HowSecretState createState() =>
      _CreateElection_HowSecretState();
}

class _CreateElection_HowSecretState extends State<CreateElection_HowSecret> {
  var _radio1 = 0, _radio2 = 0;
  bool realtime = false, inviteVoters = false;

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
        ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.bottomLeft,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 70.0,
                  width: 70.0,
                  child: Image.asset("agora.png"),
                ),
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
                            "5",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 15.0),
                          ),
                        )),
                    Text(
                      "  Options",
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
                    child: Text(
                      "How secret are the ballots?",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    )),
                RadioOption(
                  text: "Ballots are never shown to anyone",
                  value: "1",
                  group: "1",
                ),
                RadioOption(
                  text: "Ballots are visible only to me",
                  value: "0",
                  group: "1",
                ),
                RadioOption(
                  text: "Ballots are visible to everyone",
                  value: "0",
                  group: "1",
                ),
                Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Who can see the list of voters?",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16.0),
                    )),
                RadioOption(
                  text: "Only me",
                  value: "1",
                  group: "1",
                ),
                RadioOption(
                  text: "Everyone",
                  value: "0",
                  group: "1",
                ),
                CheckBoxOption(
                  text: "Get realtime results",
                  checked: false,
                ),
                CheckBoxOption(
                  text: "Invite voters",
                  checked: false,
                ),
                SizedBox(
                  height: 70.0,
                )
              ],
            ),
          ],
        ),
      ]),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Continue"),
        backgroundColor: Color(0xFFFFCD00),
        icon: Icon(Icons.navigate_next),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

class RadioOption extends StatelessWidget {
  String text, group, value;
  RadioOption({this.text, this.group, this.value});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Radio(
          onChanged: doSomething(),
          value: value,
          groupValue: group,
        ),
        Text("$text")
      ],
    );
  }
}

class CheckBoxOption extends StatelessWidget {
  bool checked;
  String text;
  CheckBoxOption({this.checked, this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Checkbox(
          value: checked,
          onChanged: (bool value) {
            doSomeOtherThing();
          },
        ),
        Text("$text"),
      ],
    );
  }
}

doSomething() {}
doSomeOtherThing() {}
