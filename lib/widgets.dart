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
  List<String> ChooseList = [
    'الدخان',
    'استماع للصفحة كاملة',
    'استماع للحزب',
    'استماع للجزء'
  ];
  String? num;
  bool checkValue = false;
  bool listenValue = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Column(
      children: [
        Text(
          'استماع',
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        Text('الرجاء اختيار المادة المراد الاستماع لتلاوتها'),
        Divider(
          color: Colors.grey[300],
          height: 10,
          thickness: 2,
        ),
        ...ChooseList.map((listItem) {
          return Column(
            children: [
              RadioListTile(
                value: ChooseList.indexOf(listItem),
                groupValue: num,
                onChanged: (value) {
                  setState(() {
                    num = ChooseList[value as int];
                  });
                },
                title: Text(
                  listItem,
                  textAlign: TextAlign.right,
                ),
                subtitle: Divider(
                  color: Colors.grey[300],
                  height: 10,
                  thickness: 2,
                ),
              )
            ],
          );
        }).toList(),
        CheckboxListTile(
          onChanged: (bool? value) {
            setState(() {
              checkValue = value!;
            });
          },
          value: checkValue,
          title: Text('تكرار الاستماع'),
        ),
        CheckboxListTile(
          onChanged: (bool? value) {
            setState(() {
              listenValue = value!;
            });
          },
          value: listenValue,
          title: Text('الاستماع من الصفحة الحالية'),
        ),
        Divider(
          color: Colors.grey[300],
          height: 10,
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: MaterialButton(
              child: Text(
                'موافق',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {},
              color: Colors.blue,
            )),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: MaterialButton(
              child: Text(
                'إلغاء',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {},
              color: Colors.blue,
            )),
          ],
        ),
      ],
    ));
  }
}

//searchmenu
class ShowDialogSearchMenu extends StatefulWidget {
  const ShowDialogSearchMenu({Key? key}) : super(key: key);

  @override
  _ShowDialogSearchMenuState createState() => _ShowDialogSearchMenuState();
}

class _ShowDialogSearchMenuState extends State<ShowDialogSearchMenu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Dialog(
        child: Scaffold(
          appBar: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: Center(
                  child: Text('قوائم البحث'),
                ),
                //text:'قوائم البحث' ,
              ),
              Tab(
                child: Center(child: Text('قوائم الآيات')),
              ),
            ],
          ),
          body: TabBarView(
            children: [
              TextButton(
                onPressed: () {},
                child: Text('إنشاء قائمة'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('إنشاء قائمة'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//setting

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
              onPressed: () {},
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
              onPressed: () {},
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
              onPressed: () {},
            ),
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
              onPressed: () {},
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
              onPressed: () {},
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
            title: Text('المساعدة'),
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
              onPressed: () {},
            ),
          ),
          Divider(
            color: Colors.grey[300],
            height: 10,
            thickness: 2,
          ),
          ListTile(
            title: Text('انشر تؤجر'),
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

//List
class ShowListDialog extends StatefulWidget {
  const ShowListDialog({Key? key}) : super(key: key);

  @override
  _ShowListDialogState createState() => _ShowListDialogState();
}

class _ShowListDialogState extends State<ShowListDialog> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Dialog(
        child: Scaffold(
          appBar: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: Center(
                  child: Text('قوائم السور'),
                ),
                //text:'قوائم البحث' ,
              ),
              Tab(
                child: Center(child: Text('قوائم الأجزاء')),
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'ابحث في السور',
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.black),
                            ),
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: TextButton(
                          onPressed: () {},
                          child: Text(
                            '44. الدخان',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'ابحث في الأجزاء',
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 3, color: Colors.black),
                            ),
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: TextButton(
                          onPressed: () {},
                          child: Text(
                            ' 25.الجزء الخامس والعشرون',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//BookMarkList
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

//ADDBookmark
class ShowAddBookmark extends StatefulWidget {
  const ShowAddBookmark({Key? key}) : super(key: key);

  @override
  _ShowAddBookmarkState createState() => _ShowAddBookmarkState();
}

class _ShowAddBookmarkState extends State<ShowAddBookmark> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog();
  }
}

// SearchIcon

class ShowSearchDialog extends StatefulWidget {
  @override
  _ShowSearchDialogState createState() => _ShowSearchDialogState();
}

class _ShowSearchDialogState extends State<ShowSearchDialog> {
  @override
  Widget build(BuildContext context) {
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
            Expanded(child: InkWell(child: ,),),
            Expanded(child: InkWell(child: ,),),
            Expanded(child: InkWell(child: ,),),
            Expanded(child: InkWell(child: ,),),
          ],),
        )
      ],)

    );
  }
}

