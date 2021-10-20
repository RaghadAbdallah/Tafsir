import 'package:flutter/material.dart';
import 'package:tafsier/presentation/widgets/setting.dart';

class AboutTafsir extends StatefulWidget {
  @override
  _AboutTafsirState createState() => _AboutTafsirState();
}

class _AboutTafsirState extends State<AboutTafsir> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Dialog(
          child: Column(
            children: [
              Container(
                  color: Colors.grey[300],
                  child: ListTile(
                    title: Center(
                      child: Text(
                        'نبذه عنا',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    trailing: TextButton(onPressed: () {   showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return  ShowDialogSetting();
                        });},
                      child: Text('الاعدادات'),),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Image.asset('assets/godImage.jpg')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('تمتلك وقفية الأمير غازي للفكر القرآني موقع التفاسير العظيمة وهو وقف ذري غير ربحي ومقره الاردن تم تأسيسه في عام 1433ه/2012 م  وقد أسس مشاريع أخرى'),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('تمتلك وقفية الأمير غازي للفكر القرآني أيضا المواقع الإلكترونية المجانية التالية:'),
              ),
              Text('والتطبيقات المجانية التالية:',textAlign: TextAlign.left,),
              ListTile(title:Text('تطبيق إقامة الصلاة') ,trailing:Image.asset('assets/ios.png') ,),
              ListTile(title:Text('تطبيق إقامة الصلاة'),trailing:Image.asset('assets/android.png') ,),
              ListTile(title:Text('تطبيق الفكر القرآني'),trailing:Image.asset('assets/ios.png') ,),
              ListTile(title:Text('تطبيق الفكر القرآن'),trailing:Image.asset('assets/android.png') ,),
            ],
          )),
    );
  }
}
