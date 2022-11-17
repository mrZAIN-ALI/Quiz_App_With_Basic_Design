// import 'package:flutter/material.dart';

// void main() {
//   runApp(myApp());
// }

// class myApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Text('Hello lol!'),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MySecondApp());
// }

// class MySecondApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('This is second app'),
//         ),
//         body: Text('Welcome to my Hello world'),
//       ),
//     );
//   }

// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyThirdApp());
// }

// void anser_Question() {
//   print("Anser Chosen");
// }

// class MyThirdApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('This is Third app'),
//         ),
//         body: Column(
//           children: [
//             Text('Wat\'s your Favroute Color'),
//             ElevatedButton(
//               onPressed: anser_Question,
//               child: Text('Black'),
//             ),
//             ElevatedButton(
//               onPressed: anser_Question,
//               child: Text('Blue'),
//             ),
//             ElevatedButton(
//               onPressed: anser_Question,
//               child: Text("Red"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyThirdApp());
// }
//
// class MyThirdApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('This is Third app'),
//         ),
//         body: Column(
//           children: [
//             Text('Wat\'s your Favroute Color'),
//             ElevatedButton(
//               onPressed:()=> print("Anser 1 chosen"),
//               child: Text('Black'),
//             ),
//             ElevatedButton(
//               onPressed: ()=>print("Anser 2 chosen"),
//               child: Text('Blue'),
//             ),
//             ElevatedButton(
//               onPressed: ()=>print("Anser 3 chosen"),
//               child: Text("Red"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp(),);
// }

// class MyApp extends StatefulWidget {
//   State<StatefulWidget> createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//     var questions = ["What is your fvt color", "What is your fvt animal"];
//   var index = 0;
//   void answerQuestion() {
//     setState(() {
//       index++;
//     });
//     print(index);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("THis app can change it\'s state"),
//         ),
//         body: Column(
//           children: [
//             Text(questions[index]),
//             ElevatedButton(
//               onPressed: answerQuestion,
//               child: Text("Anser 1"),
//             ),
//             ElevatedButton(
//               onPressed: answerQuestion,
//               child: Text("Answer 2"),
//             ),
//             ElevatedButton(
//               onPressed: answerQuestion,
//               child: Text("Answer 3"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import './quesions.dart';

void main() {
  runApp(NewApp());
}

class NewApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return NewAppState();
  }
}

class NewAppState extends State<NewApp> {
  
  var _index=0;
  get _questions => ["What is your Favourte colour",
                  "What is your Favourte Animal",
                  "Which is your Favourte Drik"
  ];
  void _changeStateAndIndex(){
      setState(() {
        ++_index;
      });
      print("Current index  ${--_index} and changed to ${++_index} ");
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
      body: Column(
        children: [
          Questions(_questions[_index]),
          ElevatedButton(onPressed: _changeStateAndIndex,
                        child:Text("Answer 1"),
          ),

          
          ElevatedButton(onPressed: _changeStateAndIndex,
                        child:Text("Answer 2"),
          ),

          
          ElevatedButton(onPressed: _changeStateAndIndex,
                        child:Text("Answer 3"),
          )
        ],
      ),  

      ),
    );
  }
}
