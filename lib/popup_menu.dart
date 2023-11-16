import 'package:flutter/material.dart';

class PopupMenu extends StatefulWidget {
  const PopupMenu({Key? key}) : super(key: key);

  @override
  _PopupMenuState createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  var selectedItem = '';

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        offset: Offset.fromDirection(10, 1),
        position: PopupMenuPosition.under,
        padding: const EdgeInsets.all(2),
        icon: CircleAvatar(
          child: Image.asset('assets/man.png'),
        ),
        onSelected: (value) {
          // your logic
          setState(() {
            selectedItem = value.toString();
          });

          Navigator.pushNamed(context, value.toString());
        },
        itemBuilder: (BuildContext bc) {
          return const [
            PopupMenuItem(
              value: "profile",
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.account_box),
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              value: "settings",
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.settings)),
                  Text(
                    'Settings',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              value: "logout",
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.logout)),
                  Text(
                    'Logout',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ];
        });
  }
}
