import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'FakeBook\n',
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 80, height: 0.9),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Social Media is nothing but clicks and views, artificially inflating and crushing our senses of self worth from simply loading a page. Our individual and collective mental health may depend on how well we can manage these pressures.',
            style: TextStyle(fontSize: 15, height: 1.7),
          ),
        ],
      ),
    );
  }
}
