import 'package:flutter/material.dart';

class FirstRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print ('1------------ GOI HAM BUILD CUA FIRST ROW');

    return Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        height: 50,
        //width: 400,
        child: Row(
          children: [
            RichText(
              text: TextSpan(
                text: "facebook",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent.shade700,
                  //decoration: TextDecoration.lineThrough,
                  //decorationColor: Colors.red,
                 // decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              radius: 20,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(Icons.search),
                color: Colors.black,
                onPressed: () {
                  print('Hello Hai');
                },
              ),
            ),

            //Container(height: 15, width: 15, child: Image(image: AssetImage('images/facebookmessage.png'))),

            CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              radius: 20,
              child: Image(
                width: 20,
                image: AssetImage('images/facebookmessage.png'),
              ),
            ),
            //Icon(Icons.search),
            //Icon(Icons.chat),
          ],
        ));
  }
}
