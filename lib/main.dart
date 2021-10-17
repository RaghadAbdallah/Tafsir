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
    Size sizeValue =MediaQuery.of(context).size;
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
            Positioned(
                child: Container(
                  height: sizeValue.height*.91,
                  width: sizeValue.width,
                  color: Colors.white,
                )),
            Positioned(top: 0, child: Container(height: sizeValue.height*.12,width: sizeValue.width,
                child: Image.asset('assets/pdfHeader.png',fit: BoxFit.fill,))),

            Positioned(
                top: sizeValue.height*.03,
                child: Container(
                  height: sizeValue.height*0.06,
                  width: sizeValue.width,
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
                                    return ShowSearchDialog();
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
                                    return ShowAddBookmark();
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
                                    return ShowBookmarkListDialog();

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
                                    return ShowListDialog();
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
                                    return  ShowDialogSetting();
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
                                    return ShowDialogSearchMenu();
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
                top: sizeValue.height*.099,
                width: sizeValue.width*1.02,
                child: Image.asset(
                  'assets/QuranFramDesign_iPad@3x.png',
                )),
            Positioned(
                top: sizeValue.height*.08,
                left: sizeValue.width*.66,
                child: Image.asset(
                  'assets/Joza025.png',
                  height: sizeValue.height*.1,
                  width: sizeValue.width*.17,
                )),
            Positioned(
                top: sizeValue.height*.08,
                left: sizeValue.width*.17,
                child: Image.asset(
                  'assets/Sora044.png',
                  height: sizeValue.height*.1,
                  width: sizeValue.width*.17,
                )),
            Positioned(
              top: sizeValue.height*.16,
              child: Container(
                height: sizeValue.height*.72,
                width: sizeValue.width*1.5,
                child: PageView(
                  controller: controller,
                  children: [
                    Positioned(
                      child: Image.asset(
                        'assets/page1 (1).png',
                      ),
                    ),
                    Positioned(
                        child: Image.asset(
                          'assets/page1 (2).png',
                        )),
                    Positioned(
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
