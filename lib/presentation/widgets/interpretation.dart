import 'package:flutter/material.dart';
import 'package:tafsier/presentation/widgets/setting.dart';

class Interpretation extends StatefulWidget {
  @override
  _InterpretationState createState() => _InterpretationState();
}

class _InterpretationState extends State<Interpretation> {

  List<String> interpretationList=[
    'إرشاد العقل السليم إلى مزايا الكتاب الكربم/ ابو السعود',
    'أضواء البيان في تفسير القرآن/ الشنقيطي',
    'أيسر التفاسير/ أبو بكر الجزائري',
    'أيسر التفاسير/ د.أسعد حومد',
    'البحر المحيط/ ابو حيان',
    'البحر المديد في تفسير القرآن المجيد/ ابن عجيبة',
    'التبيان الجامع لعلوم القرآن/ الطوسي',
    'التحرير والتنوير / ابن عاشور',
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
                      'اختيار التفسير',
                      textAlign: TextAlign.center,
                    ),
                    trailing: TextButton(onPressed: () {   showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return  ShowDialogSetting();
                        });},
                      child: Text('الاعدادات'),),
                  )),
              ...interpretationList.map((Itemlist){
                return Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      color: Colors.grey[300],
                      height: 10,
                      thickness: 2,
                    ),
                    TextButton(onPressed:(){}, child: Text(Itemlist,style: TextStyle(color: Colors.black),
                    ),)

                ],);} )
            ],
          )),
    );
  }
}
