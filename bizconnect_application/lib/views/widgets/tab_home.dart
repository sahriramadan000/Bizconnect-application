import 'package:flutter/material.dart';

class MyTab extends StatefulWidget {
  final String title;
  final String subtitle;
  final TabController tabController;

  const MyTab({Key? key, required this.title, required this.tabController, required this.subtitle}) : super(key: key);

  @override
  _MyTabState createState() => _MyTabState();
}

class _MyTabState extends State<MyTab> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    widget.tabController.addListener(() {
      if (widget.tabController.index == 0) {
        _scrollController.jumpTo(0);
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(
                      color: Color(0xFF252525),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 16, 16, 5),
                            child: Row(
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    'assets/user1.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                ),
                                SizedBox(width: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Lydia Gouse',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      widget.subtitle,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum commodo nisl ac eros euismod.',
                              style: TextStyle(
                                fontFamily: 'Plus Jakarta Sans',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            padding: EdgeInsets.fromLTRB(16, 5, 16, 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Color(0xFF666666),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        'Economy',
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFD4D4D4),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Color(0xFF666666),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        'Finance',
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFFD4D4D4),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                const Divider(
                                  color: Color.fromARGB(255, 143, 143, 143),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.thumb_up_outlined,
                                          size: 16,
                                          color:Colors.white,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          '120 Votes',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(width: 15),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.message_outlined,
                                          size: 16,
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          '30 Replies',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}