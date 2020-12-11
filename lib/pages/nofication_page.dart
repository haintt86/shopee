
import 'package:cupertino_flutter_app/const/constant.dart';
import 'package:cupertino_flutter_app/locator.dart';
import 'package:cupertino_flutter_app/singletons/global_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var globalData = locator<GlobalData>();
    return Scaffold(
      body: SafeArea(
        child: DefaultTextStyle(
          style: Theme.of(context).textTheme.headline4,
          child: Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Notification Page'),
                RaisedButton(
                  child: Text('Notification'),
                  onPressed: (){
                    Navigator.of(context).pushNamed(RoutePaths.Notification);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      // bottom bar
      bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.home),
                  disabledColor: Colors.green,
                  onPressed: globalData.currentSelectedTab == 0
                      ? null
                      : (){
                    // set lai current index = 0
                    globalData.currentSelectedTab = 0;
                    Navigator.of(context).pushNamed(RoutePaths.Home);
                    // chuyen den trang NewsFeed
                  }),
              IconButton(
                  icon: Icon(Icons.notifications),
                  disabledColor: Colors.green,
                  onPressed: globalData.currentSelectedTab == 1
                      ? null
                      : (){
                    // set lai current index = 1
                    globalData.currentSelectedTab = 1;
                    // chuyen den trang Notification
                    Navigator.of(context).pushNamed(RoutePaths.Notification);
                  }),
              IconButton(
                  icon: Icon(Icons.settings),
                  disabledColor: Colors.green,
                  onPressed: globalData.currentSelectedTab == 2
                      ? null
                      : () {
                    // set lai current index = 2
                    globalData.currentSelectedTab = 2;
                    // chuyen den trang Notification
                    Navigator.of(context).pushNamed(RoutePaths.Setting);
                  }),
            ],
          )
      ),
    );
  }
}