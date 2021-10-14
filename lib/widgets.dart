import 'package:flutter/material.dart';

class ShowTabBar extends StatelessWidget {
  static const routeName = '/showTabBar';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.animation),
                ),
                Tab(
                  icon: Icon(Icons.ac_unit),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Animation')),
              Center(child: Text('Animation')),
            ],
          ),
        ));
  }
}