import 'package:flutter/material.dart';
import 'package:vigyapn/filter_card.dart';
import 'package:vigyapn/popup_menu.dart';

import 'package:vigyapn/searchbar.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});
  static const routeName = '/home';

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<String> menuString = <String>[
    'Billboards',
    'TV Ads',
    'Digital Boards',
    'Flex Boards',
  ];
  @override
  void initState() {
    // initialise your tab controller here
    _tabController = TabController(length: menuString.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FilterCard(
            menuString: menuString,
            tabController: _tabController,
          ),
        ],
      ),
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color.fromRGBO(255, 49, 49, 1)),
        actions: const [
        //PopupMenu(),
        PopupMenu (),
        SizedBox(width: 20,)
        ],
        title: Row(
          children: [
            SizedBox(
                height: 200,
                child: Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.fitWidth,
                )),
            const SizedBox(
              width: 50,
            ),
            SizedBox(
              height: 150,
              child: AdSearchBar(),
            ),
          ],
        ),
      ),
    );
  }
}
