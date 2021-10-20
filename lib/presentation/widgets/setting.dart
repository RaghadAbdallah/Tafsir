//setting

import 'package:flutter/material.dart';
import 'package:tafsier/presentation/widgets/ReaderSelect.dart';
import 'package:tafsier/presentation/widgets/interpretation.dart';

import 'About_us.dart';
import 'AyatMenu.dart';
import 'DownloadSura.dart';
import 'ScreenTimer.dart';

class ShowDialogSetting extends StatefulWidget {
  const ShowDialogSetting({Key? key}) : super(key: key);

  @override
  _ShowDialogSettingState createState() => _ShowDialogSettingState();
}

class _ShowDialogSettingState extends State<ShowDialogSetting> {
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
                      'الاعدادات',
                      textAlign: TextAlign.center,
                    ),
                    trailing: Image.asset('assets/left@2x.png'),
                  )),
              Divider(
                color: Colors.grey[300],
                height: 10,
                thickness: 2,
              ),
              ListTile(
                title: Text(
                  'اختيار القارىء',
                  textAlign: TextAlign.right,
                ),
                trailing: Container(
                    child: IconButton(
                      icon: Image.asset('assets/left@2x.png'),
                      onPressed: (){
                      showDialog(
                      context: context,
                      builder: (BuildContext context) {
                      return ReaderSelection();
                      });
                    },
                    )),
              ),
              Divider(
                color: Colors.grey[300],
                height: 10,
                thickness: 2,
              ),
              ListTile(
                title: Text('تنزيل السور'),
                trailing: IconButton(
                  icon: Image.asset('assets/left@2x.png'),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return DownloadSura();
                        });


                  },
                ),
              ),
              Divider(
                color: Colors.grey[300],
                height: 10,
                thickness: 2,
              ),
              ListTile(
                title: Text('تنزيل السور التي تحوى الآيات'),
                trailing: IconButton(
                  icon: Image.asset('assets/left@2x.png'),
                  onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return ShowAyatDialog();
                      });
                }),
              ),
              Divider(
                color: Colors.grey[300],
                height: 10,
                thickness: 2,
              ),
              ListTile(
                title: Text('اختيار التفسير'),
                trailing: IconButton(
                  icon: Image.asset('assets/left@2x.png'),
                  onPressed: (){showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Interpretation();
                      });},
                ),
              ),
              Divider(
                color: Colors.grey[300],
                height: 10,
                thickness: 2,
              ),
              ListTile(
                title: Text('اعداد التراجم'),
                trailing: IconButton(
                  icon: Image.asset('assets/left@2x.png'),
                  onPressed: () {},
                ),
              ),
              Divider(
                color: Colors.grey[300],
                height: 10,
                thickness: 2,
              ),
              ListTile(
                title: Text('زمن توقف الشاشة'),
                trailing: IconButton(
                  icon: Image.asset('assets/left@2x.png'),
                  onPressed: () {showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return ScreenTimer();
                      });},
                ),
              ),
              Divider(
                color: Colors.grey[300],
                height: 10,
                thickness: 2,
              ),
              ListTile(
                leading: Checkbox(
                  onChanged: (bool? value) {},
                  value: true,
                  activeColor: Colors.green,
                ),
                title: Text('تفعيل الاشعارات'),
              ),
              Divider(
                color: Colors.grey[300],
                height: 10,
                thickness: 2,
              ),
              ListTile(
                leading: TextButton(child:Text('المساعدة',style: TextStyle(color: Colors.black),), onPressed: () {  },),
              ),
              Divider(
                color: Colors.grey[300],
                height: 10,
                thickness: 2,
              ),
              ListTile(
                title: Text('نبذة عنا'),
                trailing: IconButton(
                  icon: Image.asset('assets/left@2x.png'),
                  onPressed: () {showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AboutTafsir();
                      });},
                ),
              ),
              Divider(
                color: Colors.grey[300],
                height: 10,
                thickness: 2,
              ),
              ListTile(
                leading: TextButton(child:Text('انشر تؤجر',style: TextStyle(color: Colors.black),), onPressed: () {  },),
              ),
              Divider(
                color: Colors.grey[300],
                height: 10,
                thickness: 2,
              ),
            ],
          )),
    );
  }
}