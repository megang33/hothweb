import 'package:flutter/material.dart';

class LinearProgressIndicatorClass extends StatefulWidget {
  @override
  _LinearProgressIndicatorClassState createState() => _LinearProgressIndicatorClassState();
}

class _LinearProgressIndicatorClassState extends State<LinearProgressIndicatorClass> {
  double progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal:26),
        child: Column(
          children: [
            LinearProgressIndicator(
            backgroundColor: Colors.red,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            value: progress,
            ),
          ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(15)
          ),
          child: Text('new post'),
          onPressed:(){
            if(progress >= 0.9){
              setState(() {
                progress = 0.0;
              });
            }
            else{
              setState(() {
                progress += 0.1;
              });
            }
          }
        )
        ]
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