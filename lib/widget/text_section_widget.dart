import 'package:cupertino_flutter_app/model/app_state_model.dart';
import 'package:cupertino_flutter_app/model/status.dart';
import 'package:cupertino_flutter_app/shopping_cart_tab.dart';
import 'package:cupertino_flutter_app/widget/status_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextSectionWidget extends StatefulWidget {
  @override
  _TextSectionWidgetState createState() => _TextSectionWidgetState();
}

class _TextSectionWidgetState extends State<TextSectionWidget> {

  @override
  Widget build(BuildContext context) {
    //Dung GetIt
    print('5------------ GOI HAM BUILD CUA TEXT SECTION');

    return Consumer <AppStateModel>(
      builder: (context, model, child) {
        final statusList = model.getStatusList;
        return Expanded(
          child: ListView.builder(
            itemCount: statusList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.grey.shade300),
                    height: 6,
                    width: double.maxFinite,
                  ),
                  Container(
                      decoration: BoxDecoration(color: Colors.white),
                      padding: EdgeInsets.fromLTRB(5, 2, 0, 2),
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          _buildAvatarAndName(context, statusList[index]),
                          //Build status Text
                          _buildStatusText(context, statusList[index]),
                          //Text(statusList[index]),
                        ],
                      )
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }

  _buildAvatarAndName(BuildContext context, Status myStatus) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('images/hanh.jpg'),
          ),
        ),
        Column(
          children: [
            // user name
            Container(
              padding: EdgeInsets.all(5),
              child: Text('Hanh Nguyen',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
            ),

            // time
            Row(
              children: [
                // so gio
                Text(_differentFromNow(myStatus)),
                // cham
                Text(' • '),
                // privacy
                Icon(Icons.public, size: 18, color: Colors.grey.shade700,),
              ],
            )
          ],
        )
      ],
    );
  }

  _buildStatusText(BuildContext context, Status myStatus) {
    return Container(
      padding: EdgeInsets.all(5),
      alignment: Alignment(-1, -1), //Top left
      child: ExpandableText(
        myStatus.content,
        // Xu li Text overflow
        //maxLines: 1,
        // overflow: TextOverflow.ellipsis,
        // maxLines: 2,
        // softWrap: false,
        //overflow: TextOverflow.clip,
      ),
    );
  }

  String _differentFromNow(Status myStatus) {
    String res = 'just now';

    var now = new DateTime.now();
    var differentDuration = now.difference(myStatus.createdAt);
    if (differentDuration.inDays > 365) {
      int soNam = differentDuration.inDays % 365;
      res = '$soNam years ago';
    }
    else if (differentDuration.inDays > 30) {
      int soThang = differentDuration.inDays % 30;
      res = '$soThang months ago';
    }
    else if (differentDuration.inDays > 0) {
      int soNgay = differentDuration.inDays;
      res = '$soNgay days ago';
    }
    else if (differentDuration.inHours > 0) {
      int soGio = differentDuration.inHours;
      res = '$soGio hours ago';
    }
    else if (differentDuration.inMinutes > 0) {
      int soPhut = differentDuration.inMinutes;
      res = '$soPhut mins ago';
    }
    return res;
  }

}
