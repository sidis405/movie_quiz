import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String feedback;
  Function restart;

  Result({@required this.feedback, @required this.restart});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(children: [
        Text(
          feedback,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28, color: Colors.green),
        ),
        FlatButton(
          color: Colors.red,
          textColor: Colors.white,
          child: Text("Restart quiz!"),
          onPressed: () => restart(),
        )
      ]),
    );
  }
}
