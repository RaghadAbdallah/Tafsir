// play button
import 'package:flutter/material.dart';

import 'ReaderSelect.dart';

class ShowDialogPlayButton extends StatefulWidget {
  @override
  _ShowDialogPlayButtonState createState() => _ShowDialogPlayButtonState();
}

class _ShowDialogPlayButtonState extends State<ShowDialogPlayButton> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'تنبيه!',
        textAlign: TextAlign.center,
      ),
      content: Text(
        'لم يتم تنزيل السور المراد الاستماع إلى آياتها مسبقا. هل تريد تنزيل السور؟',
        textAlign: TextAlign.center,
      ),
      actions: [
        Divider(
          color: Colors.black54,
          height: 10,
          thickness: 2,
          indent: 2,
          endIndent: 2,
        ),
        Row(
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () { showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return ReaderSelection();
                        });},
                    child: Text(
                      'نعم',
                      style: TextStyle(fontSize: 20),
                    ))),
            Expanded(
                child: TextButton(
                    onPressed: ()=>Navigator.of(context).pop(),
                    child: Text(
                      'لا',
                      style: TextStyle(fontSize: 20),
                    ))),
          ],
        ),
      ],
    );
  }
}