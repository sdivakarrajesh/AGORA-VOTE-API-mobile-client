import 'package:flutter/material.dart';

class DashCard extends StatelessWidget {
  Color start, end;
  String title,value;
  DashCard({this.start, this.end, this.title,this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: 
          Card(
            elevation: 10.0,
            margin: EdgeInsets.all(10.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment
                    .centerRight, // 10% of the width, so there are ten blinds.
                colors: [start, end],
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(title,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300

                    
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child:  Text(value,style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),),
                  )
                 
                ],
              ),
            ),
          ),
      
    );
  }
}
