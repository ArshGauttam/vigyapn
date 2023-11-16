import 'package:flutter/material.dart';

class AdSearchBar extends StatefulWidget {
  @override
  _AdSearchBarState createState() => _AdSearchBarState();
}

class _AdSearchBarState extends State<AdSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SearchBar(
        leading: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        hintText: 'Search...',
        hintStyle: MaterialStatePropertyAll(TextStyle(color: Colors.blueGrey)),
        trailing: [
          IconButton(
            icon: Icon(Icons.mic),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
