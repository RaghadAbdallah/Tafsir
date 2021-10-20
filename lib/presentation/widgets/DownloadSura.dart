import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tafsier/presentation/widgets/setting.dart';


class DownloadSura extends StatefulWidget {
  @override
  _DownloadSuraState createState() => _DownloadSuraState();
}

class _DownloadSuraState extends State<DownloadSura> {
  @override
  Widget build(BuildContext context) {
    List<String> suraMenu = [
      '44.الدخان',
      '45.الجاثية',
      '46.الأحقاف',
      '47.محمد',
      '48. الفتح',
      '49.الحجرات',
      '50. ق',
    ];
    return SingleChildScrollView(
      child: Dialog(
          child: Column(
            children: [
              Container(
                  color: Colors.grey[300],
                  child: ListTile(
                    title: Text(
                      'تنزيل السور',
                      textAlign: TextAlign.center,
                    ),
                    trailing: TextButton(onPressed: () {   showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return  ShowDialogSetting();
                        });},
                    child: Text('الاعدادات'),),
                  )),
              ...suraMenu.map((e){return Column(
                children: [
                  ListTile(
                        leading: TextButton(
                          onPressed: () {
                          },
                          child: Text(
                            e,
                            style: TextStyle(
                                fontSize: 20, color: Colors.black),
                          ),
                        ),
                      trailing: Container(
                        height: 30,width: 80,
                        child:
                           LinearPercentIndicator(
                            animation: true,
                            lineHeight: 14.0,
                            animationDuration: 2000,
                            percent: 1,
                            progressColor: Colors.blue,
                        ),),
                      ),
                  Divider(
                    color: Colors.grey[300],
                    height: 10,
                    thickness: 2,
                  ),
                ],);})

            ],
          )),
    );
  }
}
