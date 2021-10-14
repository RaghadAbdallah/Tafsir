import 'package:flutter/material.dart';
// play button
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
                    onPressed: () {},
                    child: Text(
                      'نعم',
                      style: TextStyle(fontSize: 20),
                    ))),
            Expanded(
                child: TextButton(
                    onPressed: () {},
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


//playarrow

class ShowDialogPlayarrow extends StatefulWidget {

  @override
  _ShowDialogPlayarrowState createState() => _ShowDialogPlayarrowState();
}

class _ShowDialogPlayarrowState extends State<ShowDialogPlayarrow> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Column(children: [
          Text('استماع',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
          Text('الرجاء اختيار المادة المراد الاستماع لتلاوتها'),
          Divider(color: Colors.grey[300],
            height: 10,
            thickness: 2,
          ),
          ListTile(title:Text('الدخان'),),
          Divider(color: Colors.grey[300],
            height: 10,
            thickness: 2,
          ),
          ListTile(title:Text('استماع للصفحة كاملة'),),
          Divider(color: Colors.grey[300],
            height: 10,
            thickness: 2,
          ),
          ListTile(title:Text('استماع للحزب'),),
          Divider(color: Colors.grey[300],
            height: 10,
            thickness: 2,
          ),
          ListTile(title:Text('استماع للجزء'),),
          Divider(color: Colors.grey[300],
            height: 10,
            thickness: 2,
          ),
          ListTile(leading:Checkbox(
            onChanged: (bool? value) {  }, value: false,) ,title:Text('تكرار الاستماع'),),
          ListTile(leading:Checkbox(
            onChanged: (bool? value) {  }, value: false,) ,title:Text('الاستماع من الصفحة الحالية'),),
          Divider(color: Colors.grey[300],
            height: 10,
            thickness: 2,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: MaterialButton(child: Text('موافق',style: TextStyle(color: Colors.white,fontSize: 20),),onPressed: (){},color: Colors.blue,)),
              SizedBox(width: 20,),
              Expanded(child: MaterialButton(child: Text('إلغاء',style: TextStyle(color: Colors.white,fontSize: 20),),onPressed: (){},color: Colors.blue,)),
            ],
          ),

        ],)
    );


  }
}





