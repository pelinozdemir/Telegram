import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_getx/model/person.dart';
import 'package:get/get.dart';

class NavigationMenuWidget extends StatelessWidget {
  Person_Data person_data = Person_data_list.getPerson();
  bool isDarkMode = true;
  Color iconColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Drawer(
        backgroundColor: Color.fromARGB(255, 50, 50, 50),

        // color: Color.fromARGB(255, 46, 49, 46),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(person_data.name),
              accountEmail: Text(person_data.number),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    person_data.image,
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.black12),
            ),
            GestureDetector(
              child: ListTile(
                leading: Icon(
                  Icons.group,
                  color: iconColor,
                ),
                title: Text(
                  'New Group',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: iconColor,
                ),
                title: Text(
                  'Contacts',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              child: ListTile(
                leading: Icon(
                  Icons.call,
                  color: iconColor,
                ),
                title: Text(
                  'Calls',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              child: ListTile(
                leading: Icon(
                  Icons.share_location_outlined,
                  color: iconColor,
                ),
                title: Text(
                  'People Nearby',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              child: ListTile(
                leading: Icon(
                  Icons.bookmark_outline_rounded,
                  color: iconColor,
                ),
                title: Text(
                  'Saved Messages',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: iconColor,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            Divider(),
            GestureDetector(
              child: ListTile(
                leading: Icon(
                  Icons.person_add,
                  color: iconColor,
                ),
                title: Text(
                  'Invite Friends',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              child: ListTile(
                leading: Icon(
                  Icons.question_mark,
                  color: iconColor,
                ),
                title: Text(
                  'Features',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              child: ListTile(
                leading: Icon(
                  Icons.dark_mode,
                  color: iconColor,
                ),
                title: Text(
                  'Mode',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              onTap: () {
                /* Get.changeThemeMode(
                    Get.isDarkMode ? Theme : ThemeMode.light);
                isDarkMode = false;*/
              },
            ),
          ],
        ),
      ),
    );
  }
}
