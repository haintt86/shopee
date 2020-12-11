//import 'package:cupertino_flutter_app/locator.dart';
import 'package:cupertino_flutter_app/widget/create_room_widget.dart';
import 'package:cupertino_flutter_app/widget/enter_status_widget.dart';
import 'package:cupertino_flutter_app/widget/live_photo_room_widget.dart';
import 'package:cupertino_flutter_app/widget/logo_search_widget.dart';
import 'package:cupertino_flutter_app/widget/text_section_widget.dart';
import 'package:flutter/material.dart';

class NewsFeedTab extends StatefulWidget {
  @override
  _NewsFeedTabState createState() => _NewsFeedTabState();

}

class _NewsFeedTabState extends State<NewsFeedTab>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
                children: [
                  FirstRowWidget(),
                  EnterStatusWidget(
                      onStatusUpdated: _xulyCallBack),
                  ThirdRowWidget(),
                  FourthRowWidget(),
                  TextSectionWidget(),
                ],
              ),
        ),
      ),
    );
  }

  _xulyCallBack(){
    print('Hien gio dang o NewsFeed, cai ham nay duoc goi o Second Row Widget');
    setState(() {

    });
  }

}