import 'package:flutter/material.dart';

class FourthRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print ('4------------ GOI HAM BUILD CUA FOURTH ROW');

    return Container(
      height: 50,
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Row(
          children: <Widget>[
            // Create room icon
            Container(
              height: 33,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blue, width: 0.0),
                borderRadius:
                new BorderRadius.all(Radius.elliptical(60,60)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 20, width: 30, child: Image(image: AssetImage('images/camera.png'))),
                  Text(
                      "Create \nRoom",
                    style: TextStyle(fontSize: 12, color: Colors.blue),
                  ),
                ],
              ),
            ),
            _buildRoomIcon('images/hanh.jpg'),
            _buildRoomIcon('images/thach.jpg'),
            _buildRoomIcon('images/picture.jpg'),
            _buildRoomIcon('images/hanh.jpg'),
            _buildRoomIcon('images/hanh.jpg'),
            _buildRoomIcon('images/hanh.jpg'),
            _buildRoomIcon('images/hanh.jpg'),

          ],
        ),
      ),
    );
  }
  // Build Room Icon
  Widget _buildRoomIcon(String profilePicturePath){

    return Expanded(
      flex: 1,
      child: Container(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(profilePicturePath),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
