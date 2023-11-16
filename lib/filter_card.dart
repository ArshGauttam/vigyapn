import 'package:flutter/material.dart';
import 'package:vigyapn/constant.dart';

// ignore: must_be_immutable
class FilterCard extends StatelessWidget {
  FilterCard(
      {super.key, required this.menuString, required this.tabController});
  final List<String> menuString;
  TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Center(
        child: Card(
            color: Colors.white,
            elevation: 2,
            child: TabBar(
              labelColor: Colors.white,
              
              isScrollable: true,
              controller: tabController,
              indicatorColor: redColor,
              indicator: BoxDecoration(
                  color: redColor, borderRadius: BorderRadius.circular(15)),
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: menuString[0]),
                Tab(text: menuString[1]),
                Tab(text: menuString[2]),
                Tab(text: menuString[3]),
              ],
              
            )),
      ),
    );
  }
}
