import 'package:cupertino_flutter_app/model/app_state_model.dart';
import 'package:cupertino_flutter_app/model/status.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class EnterStatusWidget extends StatefulWidget {

  EnterStatusWidget({
    this.onStatusUpdated,
  });

  // Khai bao 1 ham callback tra ve void
  VoidCallback onStatusUpdated;

  @override
  _EnterStatusWidgetState createState() => _EnterStatusWidgetState();
}

class _EnterStatusWidgetState extends State<EnterStatusWidget> {
  TextEditingController myController;
  @override
  void initState() {
    super.initState();
    myController = TextEditingController();
    //myController = TextEditingController()..addListener(_onTextChanged);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print ('2------------ GOI HAM BUILD CUA SECOND ROW');

    return Consumer<AppStateModel>(
      builder: (context, model, child){
        return Container(
          padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
          height: 60,
          color: Colors.white,
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('images/hanh.jpg'),
              ),
              Container(
                width: 200,
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: TextField(
                  controller: myController,
                  onSubmitted: (text){
                    Status myStatus = Status(content:text,createdAt: DateTime.now());
                    model.addNewStatus(myStatus);
                    // var globalData = locator<GlobalData>();
                    // globalData.statusFromGlobalData.insert(0, myStatus);
                    // for (var i = 0; i < globalData.statusFromGlobalData.length; i++ ){
                    //   Status s = globalData.statusFromGlobalData[i];
                    //   print('NHAP VAO: ${s.content}');
                    // }
                    // // clear text after ENTER
                    myController.text = "What's on your mind?";
                    //
                    // goi ham nay o trong SecondRowWidget
                    //this.onStatusUpdated();
                  },
                  //controller: myController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "What's on your mind?",
                    hintStyle: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
