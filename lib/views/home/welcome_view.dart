import 'package:flutter/material.dart';
import 'package:hothweb/widgets/navigation_bar/navigation_bar.dart';
import 'package:hothweb/widgets/centered_view/centered_view.dart';
import 'package:hothweb/widgets/body/body.dart';
import 'package:hothweb/views/home/home_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  WelcomeViewState createState() => WelcomeViewState();
}

class WelcomeViewState extends State<WelcomeView> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            child: Image(image: AssetImage('assets/fakebook.jpg')),
          ),
          Text('WELCOME TO FAKEBOOK'),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
            child: TextField(
                controller: myController,
                decoration: InputDecoration(
                    hintText: "Enter your username",
                    labelText: "Username",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black)))),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(2),
              ),
              child: Text('Begin'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeView()),
                );
              }),
        ]));
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