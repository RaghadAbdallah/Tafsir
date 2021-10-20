
// SearchIcon

import 'package:flutter/material.dart';

class ShowSearchDialog extends StatefulWidget {
  @override
  _ShowSearchDialogState createState() => _ShowSearchDialogState();
}

class _ShowSearchDialogState extends State<ShowSearchDialog> {
  @override
  Widget build(BuildContext context) {
    Size sizeValue =MediaQuery.of(context).size;
    return Dialog(
        child: Column(children: [
          Text('البحث في القرآن',style: TextStyle(fontSize: 20),),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),borderRadius: BorderRadius.circular(5)),
                  labelText: 'ابحث في القرآن..على الأقل حرفين'),
            ),
          ),
          Container(
            child: Row(children: [
              Expanded(child: InkWell(child:Image.asset('assets/word.png') ,),),
              Expanded(child: InkWell(child: Image.asset('assets/root.png'),),),
              Expanded(child: InkWell(child:Image.asset('assets/word_root.png'),),),
              Expanded(child: InkWell(child: Image.asset('assets/Ayah.png') ,),),
            ],),
          ),
          Container(
            height: sizeValue.height*0.07,width: sizeValue.width,color: Colors.blueGrey[100],child: Text('عدد النتائج:0'),),
          Expanded(
            child: Container(),
            flex: 2,
          ),
          Divider(
            color: Colors.grey[300],
            height: 10,
            thickness: 2,
          ),
          Container(
              padding: EdgeInsets.all(16.0),
              child: Row(children: [
                InkWell(
                  onTap: ()=>Navigator.of(context).pop(),
                  child: Image.asset(
                    'assets/Check_List_-en.png',
                  ),
                ),
                SizedBox(width: 240,),
                InkWell(
                  onTap: ()=>Navigator.of(context).pop(),
                  child: Image.asset(

                    'assets/Add-List-en.png',
                  ),
                )
              ],)),

        ],)

    );
  }
}