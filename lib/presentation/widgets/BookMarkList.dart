//BookMarkList
import 'package:flutter/material.dart';

class ShowBookmarkListDialog extends StatefulWidget {
  @override
  _ShowBookmarkListDialogState createState() => _ShowBookmarkListDialogState();
}

class _ShowBookmarkListDialogState extends State<ShowBookmarkListDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 260.0,
        height: 230.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.blueGrey[100]),
                child: Text(
                  'العلامات',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            // dialog centre
            Expanded(
              child: Container(),
              flex: 2,
            ),

            Expanded(
              child: Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(color: Colors.blueGrey[100]),
                  child: InkWell(
                    onTap: ()=>Navigator.of(context).pop(),
                    child: Image.asset(
                      'assets/delete.png',
                      alignment: Alignment.bottomLeft,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}