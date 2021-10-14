import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tafsier/widgets.dart';

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
        ShowTabBar.routeName: (context) => ShowTabBar(),
      },
    );
  }
}

class QuranProject extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(

        actions: [
          MaterialButton(onPressed:(){}),

        ],
      ),*/
      body: SafeArea(
        child: Stack(alignment: Alignment.center,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/QuranPageBackground.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(top: 0,
                child:Image.asset('assets/pdfHeader.png') ),

            Positioned(
                child: Container(height:620,width: double.infinity,
                  color:Colors.white ,)),
            Positioned(
                top:20,child: Container(
              height: 50,width: 410,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: InkWell(
                        child: Image.asset('assets/paly.png'),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('!تنبيه'),
                                  content: Text(
                                      'لم يتم تنزيل السور المراد الاستماع إلى آياتها مسبقا. هل تريد تنزيل السور؟'),
                            /* actions: [
                              BottomNavigationBar(
                                items:[
                                  BottomNavigationBarItem(
                                   icon: Text('نعم'),),
                                  BottomNavigationBarItem(
                                    icon: Text('نعم'),),
                                ],
                              )
                            ],*/
                                );
                              });
                        },
                      )),
                  Expanded(
                      child: InkWell(
                        child:
                        Image.asset('assets/play_all_icon_hover.png'),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('!تنبيه'),
                                  content: Text(
                                      'لم يتم تنزيل السور المراد الاستماع إلى آياتها مسبقا. هل تريد تنزيل السور؟'),
/* actions: [
                              BottomNavigationBar(
                                items:[
                                  BottomNavigationBarItem(
                                   icon: Text('نعم'),),
                                  BottomNavigationBarItem(
                                    icon: Text('نعم'),),
                                ],
                              )
                            ],*/
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
                                  actions: [ShowTabBar()],
                                );
                              });
                        },
                      )),
                  Expanded(
                      child: InkWell(
                        child:
                        Image.asset('assets/settings_icon_hover.png'),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('!تنبيه'),
                                  content: Text(
                                      'لم يتم تنزيل السور المراد الاستماع إلى آياتها مسبقا. هل تريد تنزيل السور؟'),
/* actions: [
                              BottomNavigationBar(
                                items:[
                                  BottomNavigationBarItem(
                                   icon: Text('نعم'),),
                                  BottomNavigationBarItem(
                                    icon: Text('نعم'),),
                                ],
                              )
                            ],*/
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
                                  title: Text('!تنبيه'),
                                  content: Text(
                                      'لم يتم تنزيل السور المراد الاستماع إلى آياتها مسبقا. هل تريد تنزيل السور؟'),
/* actions: [
                              BottomNavigationBar(
                                items:[
                                  BottomNavigationBarItem(
                                   icon: Text('نعم'),),
                                  BottomNavigationBarItem(
                                    icon: Text('نعم'),),
                                ],
                              )
                            ],*/
                                );
                              });
                        },
                      )),
                  Expanded(
                      child: InkWell(
                        child: Image.asset(
                            'assets/bookmark_list_icon_hover.png'),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  actions: [
                                    BottomNavigationBar(
                                      items: [
                                        BottomNavigationBarItem(
                                          icon: Center(
                                              child: Text('العلامات')),
                                        ),
                                        BottomNavigationBarItem(
                                          icon: Icon(Icons.clear),
                                        ),
                                      ],
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
                                  title: Text('استماع'),
                                  content: Text(
                                      'الرجاء اختيار المادة المراد الاستماع لتلاوتها'),
                                  actions: [
                                    TextField(),
                                    TextField(),
                                    TextField(),
                                    TextField(),
                                    TextField(),
                                    TextField(),
                                    TextField(),
                                  ],
                                );
                              });
                        },
                      )),
                  Expanded(
                      child: InkWell(
                        child: Image.asset('assets/search_icon_hover.png'),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Center(
                                      child: Text('البحث في القرآن')),
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
                ],
              ),)),
             Positioned(top: 75,width: 420,
                  child:
                  Image.asset('assets/QuranFramDesign_iPad@3x.png',)),


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
              top: 110,width: 1000,
              child: Container(//color: Colors.redAccent,
                height: 500,
                width:1500,
                child: PageView(
                  controller: controller,
                  children: [
                    Positioned(
                      top: 100,
                      bottom: 120,
                      left: 70,
                      child: Image.asset(
                        'assets/page1 (1).png',
                      ),
                    ),
                    Positioned(
                        top: 120,
                        bottom: 100,
                        left: 70,
                        child: Image.asset(
                          'assets/page1 (2).png',
                        )),
                    Positioned(
                        top: 120,
                        bottom: 100,
                        left: 70,
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
