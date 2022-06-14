import 'package:flutter/material.dart';


class tatil extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _tatilState();
}

class _tatilState extends State with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon:const Icon(
              Icons.chevron_left,
              size: 40.0,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        backgroundColor: Colors.green,
        title:const Text(
          "TATİL",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: _buildProductDetails(context),
    );
  }

  _buildProductDetails(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildProductImages(),
              _buildProductTitle(),
              const SizedBox(
                height: 12.0,
              ),
              _buildDivider(size),
              const SizedBox(
                height: 12.0,
              ),

              const SizedBox(
                height: 12.0,
              ),
              _buildDivider(size),
              const SizedBox(
                height: 12.0,
              ),
              _buildInfo(),
            ],
          ),
        )
      ],
    );
  }

  _buildProductImages() {
    TabController imagesController = TabController(length: 2, vsync: this);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 250.0,
        child: Center(
          child: DefaultTabController(
            length: 2,
            child: Stack(
              children: <Widget>[
                TabBarView(
                  controller: imagesController,
                  children: <Widget>[
                    Image.asset("assets/images/tatil.jpg"),
                    Image.asset("assets/images/tatil.jpg"),
                  ],
                ),
                Container(
                  alignment: const FractionalOffset(0.5, 0.95), //
                  child: TabPageSelector(
                    controller: imagesController,
                    selectedColor: Colors.grey,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildProductTitle() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Text(
        "NEDİO'NUN BU HAFTAYA ÖZEL OTELİ",
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    );
  }

  _buildDivider(Size screenSize) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.blueGrey,
          width: screenSize.width,
          height: 1.0,
        )
      ],
    );
  }



  _buildInfo() {
    TabController tabController = TabController(length: 2, vsync: this);
    return Column(
      children: <Widget>[
        TabBar(
          controller: tabController,
          tabs: const <Widget>[
            Tab(
              child:
              Text("YERİ", style: TextStyle(color: Colors.white)),
            ),
            Tab(
              child:
              Text("ETKİNLİKLERİ", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
          height: 80.0,
          child: TabBarView(
            controller: tabController,
            children: const [
              Text("11111111111)",
                  style: TextStyle(color: Colors.white)),
              Text( "222222222222222",
                  style: TextStyle(color: Colors.white)),
            ],
          ),
        )
      ],
    );
  }
}
