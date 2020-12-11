import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExpandableText extends StatefulWidget {
  ExpandableText(this.text);

  final String text;

  @override
  _ExpandableTextState createState() => new _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    print('Goi ham build cua status');

    int textLength = widget.text.length;
    String newText = widget.text;

    int maxLenAllowed = 200;
    if (textLength > maxLenAllowed && isExpanded == false){
      newText = widget.text.substring(0, maxLenAllowed);
      newText = newText + '... See More';

      // See More case, tap on text to expand
      return GestureDetector(
        // When the child is tapped, show a snackbar.
        onTap: () {
          setState(() {
            print('gan lai newtext when tapped');
            newText = widget.text;
            isExpanded = true;
          });
        },
        // The custom button
        child: Text(
          newText,
        ),
      );
    }

    // normal case, just return original text
    return Text(
      widget.text,
    );
  }
}
