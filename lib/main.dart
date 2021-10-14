import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tafsier/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quran',
      debugShowCheckedModeBanner: false,
      home: QuranProject(),
      routes: {
      },
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale('ar', 'AE'),],
      locale: Locale('ar', 'AE'),
    );
  }
}

class QuranProject extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);
  int _groupValue = -1;
  int value=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/QuranPageBackground.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(top: 0, child: Image.asset('assets/pdfHeader.png')),
            Positioned(
                child: Container(
              height: 620,
              width: double.infinity,
              color: Colors.white,
            )),
            Positioned(
                top: 20,
                child: Container(
                  height: 50,
                  width: 410,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          child: InkWell(
                            child: Image.asset('assets/search_icon_hover.png'),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Center(child: Text('البحث في القرآن')),
                                      actions: [
                                        TextField(
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText:
                                              'ابحث في القرآن..على الأقل حرفين'),
                                        )
                                      ],
                                    );
                                  });
                            },
                          )),
                      Expanded(
                          child: InkWell(
                            child: Image.asset('assets/addBookMark_hover.png'),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                    );
                                  });
                            },
                          )),
                      Expanded(
                          child: InkWell(
                            child:
                            Image.asset('assets/bookmark_list_icon_hover.png'),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      content:  Container(
                                        width: 260.0,
                                        height: 230.0,
                                        decoration:  BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius:  BorderRadius.all( Radius.circular(32.0)),
                                        ),
                                        child:  Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            Expanded(
                                              child: Row(
                                                children: <Widget>[
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.blueGrey[100]
                                                    ),
                                                    child: Text(
                                                      'العلامات',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 30,

                                                      ),
                                                      textAlign: TextAlign.center,
                                                    ),height: 50,width: 250,
                                                  ),
                                                ],
                                              ),
                                            ),

                                            // dialog centre
                                            new Expanded(
                                              child: new Container(),
                                              flex: 2,
                                            ),

                                            Expanded(
                                              child:  Container(
                                                  padding:  EdgeInsets.all(16.0),
                                                  decoration:  BoxDecoration(
                                                      color: Colors.blueGrey[100]
                                                  ),
                                                  child:Image.asset('assets/delete.png',alignment: Alignment.bottomLeft,)
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );

                                  });
                            },
                          )),
                      Expanded(
                          child: InkWell(
                            child: Image.asset('assets/list_icon_hover.png'),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      actions: [
                                        Row(children: [
                                          Container(height: 50,width: 160,  decoration: BoxDecoration(
                                              border: Border.all(color: Colors.black)),
                                            child: TextButton(onPressed: () {  },
                                              child: Text('قوائم الأجزاء',style: TextStyle(fontSize: 18,color: Colors.black),),),),
                                          Container(height: 50,width: 150,  decoration: BoxDecoration(
                                              border: Border.all(color: Colors.black)),
                                            child: TextButton(onPressed: () {},
                                              child: Text('قوائم السور',style: TextStyle(fontSize: 18,color: Colors.black),),),),
                                        ],),
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(width: 3,color: Colors.black), borderRadius: BorderRadius.all(
                                              Radius.circular(5.0))
                                          ),child:Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: Column(children: [
                                            Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: TextField(decoration:InputDecoration(labelText: 'ابحث في الأجزاء',enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(width: 3, color: Colors.black),
                                              ),prefixIcon:Icon(Icons.search),),),
                                            ),
                                            ListTile(leading: TextButton(onPressed: () {  },
                                              child:Text(' 25.الجزء الخامس والعشرون',style: TextStyle(fontSize: 20,color: Colors.black),),),),
                                            ListTile( ),
                                            ListTile(),
                                            ListTile(),
                                            ListTile(),
                                          ],),
                                        ),)
                                      ],
                                    );
                                  });
                            },
                          )),
                      Expanded(
                          child: InkWell(
                            child: Image.asset('assets/settings_icon_hover.png'),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return  SingleChildScrollView(
                                      child: AlertDialog(
                                        actions: [
                                          Container(color: Colors.grey[300],child: ListTile(title: Text('الاعدادات',textAlign: TextAlign.center,) ,)),
                                          Divider(color: Colors.grey[300],
                                            height: 10,
                                            thickness: 2,
                                          ),
                                          ListTile(title:Text('اختيار القارىء',textAlign: TextAlign.right,),trailing:Container(child: IconButton(icon: Image.asset('assets/left@2x.png'), onPressed: () {  },)) ,),
                                          Divider(color: Colors.grey[300],
                                            height: 10,
                                            thickness: 2,
                                          ),
                                          ListTile(title:Text('تنزيل السور'),trailing:IconButton(icon: Image.asset('assets/left@2x.png'), onPressed: () {  },) ,),
                                          Divider(color: Colors.grey[300],
                                            height: 10,
                                            thickness: 2,
                                          ),
                                          ListTile(title:Text('تنزيل السور التي تحوى الآيات'),trailing:IconButton(icon: Image.asset('assets/left@2x.png'), onPressed: () {  },) ,),
                                          Divider(color: Colors.grey[300],
                                            height: 10,
                                            thickness: 2,
                                          ),
                                          ListTile(title:Text('اختيار التفسير'),trailing:IconButton(icon: Image.asset('assets/left@2x.png'), onPressed: () {  },) ,),
                                          Divider(color: Colors.grey[300],
                                            height: 10,
                                            thickness: 2,
                                          ),
                                          ListTile(title:Text('اعداد التراجم'),trailing: IconButton(icon: Image.asset('assets/left@2x.png'), onPressed: () {  },) ,),
                                          Divider(color: Colors.grey[300],
                                            height: 10,
                                            thickness: 2,
                                          ),
                                          ListTile(title:Text('زمن توقف الشاشة'),trailing:IconButton(icon: Image.asset('assets/left@2x.png'), onPressed: () {  },) , ),
                                          Divider(color: Colors.grey[300],
                                            height: 10,
                                            thickness: 2,
                                          ),
                                          ListTile(leading:Checkbox(
                                            onChanged: (bool? value) {  }, value: true,activeColor: Colors.green,) ,title:Text('تفعيل الاشعارات'),),
                                          Divider(color: Colors.grey[300],
                                            height: 10,
                                            thickness: 2,
                                          ),
                                          ListTile(title:Text('المساعدة'),),
                                          Divider(color: Colors.grey[300],
                                            height: 10,
                                            thickness: 2,
                                          ),
                                          ListTile(title:Text('نبذة عنا'),trailing:IconButton(icon: Image.asset('assets/left@2x.png'), onPressed: () {  },) ,),
                                          Divider(color: Colors.grey[300],
                                            height: 10,
                                            thickness: 2,
                                          ),
                                          ListTile(title:Text('انشر تؤجر'),),
                                          Divider(color: Colors.grey[300],
                                            height: 10,
                                            thickness: 2,
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                          )),
                      Expanded(
                          child: InkWell(
                            child: Image.asset('assets/ayaList_hover.png'),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      actions: [
                                        Row(children: [
                                          Expanded(
                                            child: Container(height: 50,width: 160,  decoration: BoxDecoration(
                                                border: Border.all(color: Colors.blueAccent)),
                                              child: TextButton(onPressed: () {},
                                                child: Text('قوائم الآيات',style: TextStyle(fontSize: 18),),),),
                                          ),
                                          Expanded(
                                            child: Container(height: 50,width: 160,  decoration: BoxDecoration(
                                                border: Border.all(color: Colors.blueAccent)),
                                              child: TextButton(onPressed: () {},
                                                child: Text('قوائم البحث',style: TextStyle(fontSize: 18),),),),
                                          ),
                                        ],),
                                        Container(height: 50,width: 170,)
                                      ],
                                    );
                                  });
                            },
                          )),
                      Expanded(
                          child: InkWell(
                            child: Image.asset('assets/play_all_icon_hover.png'),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context)=>ShowDialogPlayarrow());
                            },
                          )),
                      Expanded(
                          child: InkWell(
                        child: Image.asset('assets/paly.png'),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context)=>ShowDialogPlayButton());
                        },
                      )),
                    ],
                  ),
                )),
            Positioned(
                top: 75,
                width: 420,
                child: Image.asset(
                  'assets/QuranFramDesign_iPad@3x.png',
                )),
            Positioned(
                top: 62,
                left: 270,
                child: Image.asset(
                  'assets/Joza025.png',
                  height: 70,
                  width: 70,
                )),
            Positioned(
                top: 60,
                left: 70,
                child: Image.asset(
                  'assets/Sora044.png',
                  height: 70,
                  width: 70,
                )),
            Positioned(
              top: 110,
              child: Container(
                //color: Colors.redAccent,
                height: 500,
                width: 1500,
                child: PageView(
                  controller: controller,
                  children: [
                    Positioned(
                      top: 100,
                      bottom: 120,
                      child: Image.asset(
                        'assets/page1 (1).png',
                      ),
                    ),
                    Positioned(
                        top: 120,
                        bottom: 100,
                        child: Image.asset(
                          'assets/page1 (2).png',
                        )),
                    Positioned(
                        top: 120,
                        bottom: 100,
                        child: Image.asset(
                          'assets/page1 (3).png',
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
