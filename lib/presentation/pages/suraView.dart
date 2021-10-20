import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tafsier/presentation/widgets/AddBookmark.dart';
import 'package:tafsier/presentation/widgets/BookMarkList.dart';
import 'package:tafsier/presentation/widgets/ListMenu.dart';
import 'package:tafsier/presentation/widgets/SearchIcon.dart';
import 'package:tafsier/presentation/widgets/playarrow.dart';
import 'package:tafsier/presentation/widgets/playbutton.dart';
import 'package:tafsier/presentation/widgets/searchmenu.dart';
import 'package:tafsier/presentation/widgets/setting.dart';


class QuranProject extends StatelessWidget {
  final PageController controller = PageController();

  List<String> PageList=['assets/page1 (1).png','assets/page1 (2).png','assets/page1 (3).png'];



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
                bottom: sizeValue.height*.02,
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
              width: sizeValue.width*.85,
              child: Container(
               height: sizeValue.height*.72,
                child: PageView.builder(itemCount: PageList.length,
                    itemBuilder:(BuildContext context,int index){
                  return Image.asset('${PageList[index]}',fit: BoxFit.fill,);
                })
              ),
            ),
          ],
        ),
      ),
    );
  }
}