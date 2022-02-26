import 'package:flutter/material.dart';

class LinearProgressIndicatorClass extends StatefulWidget {
  @override
  _LinearProgressIndicatorClassState createState() => _LinearProgressIndicatorClassState();
}

class _LinearProgressIndicatorClassState extends State<LinearProgressIndicatorClass> {
  bool loading = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal:26),
        child: Center(
          child: loading? LinearProgressIndicator(
            backgroundColor: Colors.red,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),

          ):Text(
            "No task to do",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
        
      );
  }
}

// floatingActionButton: FloatingActionButton(
//         child: Icon(
//           Icons.arrow_forward_ios_rounded
//         ),
//         onPressed: (){
//           setState(() {
//             loading = !loading;

//           });
//         },
//       ),