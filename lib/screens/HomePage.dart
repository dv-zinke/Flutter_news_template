import 'package:flutter/material.dart';
import 'package:news_template/models/ListItem.dart';
import 'package:news_template/widget/ListWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  List<ListItem> listTiles = [
    ListItem(
      "http://bios2017.godohosting.com/goods_mainimage/2395.jpg",
      "zz",
      "dd",
      "22"
    ),
    ListItem(
        "http://bios2017.godohosting.com/goods_mainimage/2395.jpg",
        "zz",
        "dd",
        "22"
    ),
    ListItem(
        "http://bios2017.godohosting.com/goods_mainimage/2395.jpg",
        "zz",
        "dd",
        "22"
    ),
    ListItem(
        "http://bios2017.godohosting.com/goods_mainimage/2395.jpg",
        "zz",
        "dd",
        "22"
    ),
    ListItem(
        "http://bios2017.godohosting.com/goods_mainimage/2395.jpg",
        "zz",
        "dd",
        "22"
    ),
    ListItem(
        "http://bios2017.godohosting.com/goods_mainimage/2395.jpg",
        "zz",
        "dd",
        "22"
    )
  ];

  List<Tab> _tabList = [
    Tab(
      child: Text("Top"),
    ),
    Tab(
      child: Text("Popular"),
    ),
    Tab(
      child: Text("Trending"),
    ),
    Tab(
      child: Text("Editor Choice"),
    ),
    Tab(
      child: Text("Category"),
    ),
  ];

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: _tabList.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xFFFAFAFAFA),
        centerTitle: true,
        title: Text("News App", style: TextStyle(color: Colors.black)),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: TabBar(
              indicatorColor: Colors.black,
              isScrollable: true,
              labelColor: Colors.black,
              controller: _tabController,
              tabs: _tabList),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              child: ListView.builder(
                itemCount: _tabList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: listWidget(listTiles[index]),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
          ),
          Padding(
            padding: EdgeInsets.all(8),
          ),
          Padding(
            padding: EdgeInsets.all(8),
          ),
          Padding(
            padding: EdgeInsets.all(8),
          ),
        ],
      ),
    );
  }
}
