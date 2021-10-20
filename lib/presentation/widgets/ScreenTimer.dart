import 'package:flutter/material.dart';
import 'package:tafsier/presentation/widgets/setting.dart';

class ScreenTimer extends StatefulWidget {
  @override
  _ScreenTimerState createState() => _ScreenTimerState();
}

class _ScreenTimerState extends State<ScreenTimer> {
  List<String> timerList=[
    '5 دقائق',
    '10 دقائق',
    '15 دقائق',
    '20 دقائق',

  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Dialog(
          child: Column(
            children: [
              Container(
                  color: Colors.grey[300],
                  child: ListTile(
                    title: Text(
                      'زمن توقف الشاشة',
                      textAlign: TextAlign.center,
                    ),
                    trailing: TextButton(onPressed: () {   showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return  ShowDialogSetting();
                        });},
                      child: Text('الاعدادات'),),
                  )),
              ...timerList.map((Itemlist){
                return Column(
                  children: [
                    Divider(
                      color: Colors.grey[300],
                      height: 10,
                      thickness: 2,
                    ),
                    ListTile(
                      title: Text(Itemlist,
                        textAlign: TextAlign.right,),
                    ),
                  ],);} )
            ],
          )),
    );
  }
}
