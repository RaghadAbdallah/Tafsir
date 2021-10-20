import 'package:flutter/material.dart';
import 'package:tafsier/presentation/widgets/setting.dart';

class ReaderSelection extends StatelessWidget {

  List<String> ReaderList=[
    'محمد صديق المنشاوي',
  'محمود الحصري',
    ' عبد الباسط عبد الصمد',
    'محمد الطبلاوي',
    'مصطفى اسماعيل',
    'ماهر المعيقلي',
    'محمد جبريل',
    ' مشاري العفاسي',
    'محمد أيوب '
  ];
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Dialog(
            child: Column(
              children: [
                Container(
                    color: Colors.grey[300],
                    child: ListTile(
                      title: Text(
                        'اختيار القارئ',
                        textAlign: TextAlign.center,
                      ),
                      trailing: TextButton(onPressed: () {   showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return  ShowDialogSetting();
                          });},
                        child: Text('الاعدادات'),),
                    )),
                ...ReaderList.map((ItemList){
                  return Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Divider(color: Colors.grey[300],
                      height: 10,
                      thickness: 2,),
                  TextButton(onPressed:(){}, child: Text(ItemList,style: TextStyle(color: Colors.black),))


                  ],);
                })
              ],
            )),
      );
  }
}
