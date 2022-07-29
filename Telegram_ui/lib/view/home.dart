import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_getx/view/chat_list_view.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:icon_forest/don_icons.dart';

import 'NavigationMenu.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme:
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const IconData pencil = IconData(0xf37e);
  @override
  Widget build(BuildContext context) {
    theme:
    ThemeData(backgroundColor: Color.fromARGB(69, 64, 15, 15));
    return Scaffold(
      drawer: NavigationMenuWidget(),
      //endDrawer: const NavigationSearchWidget(),
      backgroundColor: Color.fromARGB(146, 75, 70, 70),
      appBar: AppBar(
        title: Text(
          'Telegram',
        ),
        backgroundColor: Color.fromARGB(146, 72, 68, 68),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),

      /* floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(NavigationDrawerWidget()),
      ),*/
      body: ChatListView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          TablerIcons.pencil,
          size: 32,
        ),
        onPressed: () {},
        backgroundColor: Colors.pink,
      ),
    );
  }
}
