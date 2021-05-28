import 'package:flutter/material.dart';

import 'package:travel_app/models/models.dart';
import 'package:travel_app/screens/home_screen/widgets/sights_list.dart';
import 'package:travel_app/screens/home_screen/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Sight> sights = List<Sight>.filled(
    5,
    Sight(
      imagePath: "assets/images/lighthouse.jpg",
      rating: 4.5,
      name: 'Lighthouse excursions',
    ),
  );
  int currentPageIndex = 0;
  int currentTabIndex = 0;

  void changePage(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  void changeTab(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(1.0),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              TitleBar(
                title: "Explore",
                onActionIconPressed: () {},
              ),
              CustomTabBar(
                selectedIndex: currentTabIndex,
                onItemPressed: changeTab,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Row(
                  children: [
                    SightCount(
                      count: sights.length,
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: SightsList(
                    sights: sights,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      'Popular',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  //TODO: model popular sight
                  child: PopularSightItem(
                    endDate: "21 April, 21",
                    imagePath: 'assets/images/lighthouse.jpg',
                    name: 'Europian Tour',
                    startDate: "14 April",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        onIconPressed: changePage,
        selectedIndex: currentPageIndex,
      ),
    );
  }
}
