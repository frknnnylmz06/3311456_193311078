import 'package:flutter/material.dart';


class kitap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _kitapState();
}

class _kitapState extends State with TickerProviderStateMixin {
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
        backgroundColor: Colors.yellow,
        title:const Text(
          "KİTAPLIK",
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
                    Image.asset("assets/images/kitap.jpg"),
                    Image.asset("assets/images/kitap.jpg"),
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
        "LEYLA İLE MECNUN",
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
              Text("YAZARI", style: TextStyle(color: Colors.white)),
            ),
            Tab(
              child:
              Text("KONUSU", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
          height: 80.0,
          child: TabBarView(
            controller: tabController,
            children: const [
              Text("Leylâ ile Mecnun (Fuzûlî)",
                  style: TextStyle(color: Colors.white)),
              Text( "Leylâ ile Mecnun'un aşkı okulda başlar. Onlar birbirini yalnız medresede görür ve burada aşkları, karşılıklı ilişkileri daha da yakınlaşır. Mecnun'un ızdırabı ve hasreti, Leylâ'nın okuldan gitmesiyle başlar",
                  style: TextStyle(color: Colors.white)),
            ],
          ),
        )
      ],
    );
  }
}
