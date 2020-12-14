import 'package:cupertino_flutter_app/model/app_state_model.dart';
import 'package:cupertino_flutter_app/model/status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class StatusEnteringWidget extends StatefulWidget {
  StatusEnteringWidget({
    this.onStatusUpdated,
  });
  // Khai bao 1 ham callback tra ve void
  VoidCallback onStatusUpdated;
  @override
  _StatusEnteringState createState() {
    return _StatusEnteringState();
  }
}

class _StatusEnteringState extends State<StatusEnteringWidget>{
  //String status;
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
                  child: CupertinoTextField(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                    clearButtonMode: OverlayVisibilityMode.editing,
                    textCapitalization: TextCapitalization.words,
                    autocorrect: false,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 0,
                          color: CupertinoColors.inactiveGray,
                        ),
                      ),
                    ),
                    placeholder: "What's on your mind?",
                      onSubmitted: (text){
                        Status myStatus = Status(content:text,createdAt: DateTime.now());
                        model.addNewStatus(myStatus);
                        // // clear text after ENTER
                        myController.text = "What's on your mind?";
                      },
                  ),
                ),
              ],
            ),
          );
        }
    );
  }

}