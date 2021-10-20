//searchmenu
import 'package:flutter/material.dart';

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