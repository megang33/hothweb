import 'package:flutter/material.dart';
import 'package:hothweb/widgets/navigation_bar/navigation_bar.dart';
import 'package:hothweb/widgets/centered_view/centered_view.dart';
import 'package:hothweb/widgets/body/body.dart';
import 'package:hothweb/views/home/home_view.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(2),
          ),
          child: Text('Begin'),
          onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeView()),
            );
          }
        ),
      )
    );
  }
}

  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });