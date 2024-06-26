// import 'package:bizconnect_application/models/user_model.dart';
import 'package:bizconnect_application/views/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:bizconnect_application/views/widgets/bottom_navigation_bar.dart';
import 'package:bizconnect_application/views/widgets/tab_home.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF17191A),
      appBar: CustomAppBar(withLogo: true),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 20, 25, 30),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                color: Color(0xFF404144),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Color(0xFF8D9093),
                    ),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Color(0xFF8D9093)),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 4,
              child: Scaffold(
                backgroundColor: Color(0xFF17191A),
                body: NestedScrollView(
                  headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                    return [
                      SliverAppBar(
                        pinned: true,
                        backgroundColor:Color(0xFF17191A),
                        bottom: PreferredSize(
                          preferredSize: Size.fromHeight(0),
                          child: Container(
                            child: TabBar(
                              dividerColor:Color(0xFF17191A),
                              labelPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                              isScrollable: true,
                              tabs: [
                                Tab(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                                    child: Text('New'),
                                  ),
                                ),
                                Tab(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                                    child: Text('Trending'),
                                  ),
                                ),
                                Tab(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                                    child: Text('Friends'),
                                  ),
                                ),
                                Tab(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                                    child: Text('Recommended'),
                                  ),
                                ),
                              ],
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicator: BoxDecoration(
                                color: Color(0xFF252525),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelStyle: TextStyle(color: Colors.white),
                              unselectedLabelStyle: TextStyle(color: Color(0xFF8D9093)),
                            ),
                          ),
                        ),
                      ),
                    ];
                  },
                  body: TabBarView(
                    children: [
                      MyTab(tabController: _tabController, title: 'New Post', subtitle: 'Book Author'),
                      MyTab(tabController: _tabController, title: 'Trending Post', subtitle: 'Book Author'),
                      MyTab(tabController: _tabController, title: 'Friends', subtitle: 'Book Author'),
                      MyTab(tabController: _tabController, title: 'Recommended', subtitle: 'Book Author'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 0,
      ),
    );
  }
}
