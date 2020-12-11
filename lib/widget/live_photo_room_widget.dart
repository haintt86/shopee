import 'package:cupertino_flutter_app/singletons/appdata.dart';
import 'package:flutter/material.dart';

class ThirdRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print ('3------------ GOI HAM BUILD CUA ThIRD ROW');
    double iconWidth = 15;
    double iconHeight = 15;
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.grey.shade300),
            height: 1,
            width: double.maxFinite,
          ),
          Container(
            height: 35,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(height: iconHeight, width: iconWidth, child: Image(image: AssetImage('images/camera.png'))),
                      Text("Live"),
                    ],
                  ),
                ),
                Container(
                  height: 25,
                  width: 1,
                  color: Colors.grey.shade300,
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(height: iconHeight, width: iconWidth, child: Image(image: AssetImage('images/photo.png'))),
                      Text("Photo"),
                    ],
                  ),
                ),
                Container(
                  height: 25,
                  width: 1,
                  color: Colors.grey.shade300,
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(height: iconHeight, width: iconWidth, child: Image(image: AssetImage('images/room.png'))),
                      Text("Room"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.grey.shade300),
            height: AppData().rowSpacingHeight,
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }
}

