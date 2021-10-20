//List
import 'package:flutter/material.dart';

class ShowListDialog extends StatefulWidget {
  const ShowListDialog({Key? key}) : super(key: key);

  @override
  _ShowListDialogState createState() => _ShowListDialogState();
}

class _ShowListDialogState extends State<ShowListDialog> {
  List<String> suraMenu = [
    '44.الدخان',
    '45.الجاثية',
    '46.الأحقاف',
    '47.محمد',
    '48. الفتح',
    '49.الحجرات',
    '50. ق',
  ];
  List<String> juzaaMenu = [
    '24.الجزء الرابع والعشرون',
    ' 25.الجزء الخامس والعشرون',
    '26.الجزء السادس والعشرون',
    '27.الجزء السابع والعشرون',
    '28.الجزء الثامن والعشرون',
    '29.الجزء التاسع والعشرون',
    '30.الجزء الثلاثون',
  ];

  @override
  Widget build(BuildContext context) {
    Size sizeValue = MediaQuery.of(context).size;
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
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
                        ...suraMenu.map((suraItem) {
                          return Column(
                            children: [
                              ListTile(
                                leading: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    suraItem,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.grey[300],
                                height: 10,
                                thickness: 2,
                              ),
                            ],
                          );
                        }),
                        Container(
                          height: sizeValue.height * 0.07,
                          width: sizeValue.width,
                          color: Colors.blueGrey[100],
                          child: Text(' اذهب للصفحة:'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: SingleChildScrollView(
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
                        ...juzaaMenu.map((ListItem) {
                          return Column(
                            children: [
                              ListTile(
                                leading: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    ListItem,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.grey[300],
                                height: 10,
                                thickness: 2,
                              ),
                            ],
                          );
                        }),
                        Container(
                          height: sizeValue.height * 0.07,
                          width: sizeValue.width,
                          color: Colors.blueGrey[100],
                          child: Text('اذهب للصفحة:'),
                        ),
                      ],
                    ),
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
