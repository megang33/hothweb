import 'package:flutter/material.dart';
import 'package:hothweb/widgets/navigation_bar/navigation_bar.dart';
import 'package:hothweb/widgets/centered_view/centered_view.dart';
import 'package:hothweb/widgets/body/body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            Navigation(),
            Expanded(
              child: Row(children: [
                Body(),
              ]),
            )
          ],
        ),
      ),
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