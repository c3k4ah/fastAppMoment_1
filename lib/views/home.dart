//FluentSystemIcons
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bullcapital/constant/colors.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';

import '../mediaquery.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CustomSize _size = CustomSize();
  bool darkMode = false;
  bool useSides = false;
  double numberOfFeatures = 3;
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    List<int> ticks = [7, 14, 21, 28, 35];
    List<String> features = [
      "12:00",
      "12:20",
      "12:40",
      "DD",
      "EE",
      "FF",
      "GG",
      "HH"
    ];
    var data = [
      [10.0, 20, 28, 5, 16, -15, 17, 6],
      [14.5, -1, 4, -14, 23, 10, 6, 19],
      [5.5, 6, 8, 20, 13, 1, 12, 9]
    ];

    features = features.sublist(0, numberOfFeatures.floor());
    data = data
        .map((graph) => graph.sublist(0, numberOfFeatures.floor()))
        .toList();

    return Scaffold(
      backgroundColor: brown,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: brown,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        title: SizedBox(
          child: Text(
            "Stocks",
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.share_sharp)),
        ],
      ),
      body: SizedBox(
        height: _size.height(context),
        width: _size.width(context),
        child: SingleChildScrollView(
          // ignore: sort_child_properties_last
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                "\$ 78,277.90",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              RichText(
                text: TextSpan(
                  text: "\$ 10,25 ",
                  style: TextStyle(
                      fontSize: 17, color: green, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' (-1.20%)',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Container(
                width: _size.width(context),
                height: 60,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    categWiget(title: "1H", selected: true),
                    categWiget(title: "24H", selected: false),
                    categWiget(title: "1W", selected: false),
                    categWiget(title: "1M", selected: false),
                  ],
                ),
              ),
              Container(
                width: _size.width(context),
                height: _size.height(context) * .4,
                padding: EdgeInsets.zero,
                child: RadarChart(
                  // featuresTextStyle: TextSty,
                  axisColor: Colors.white,
                  outlineColor: Colors.white,
                  featuresTextStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                  ticks: ticks,
                  features: features,
                  data: data,
                  reverseAxis: true,
                  graphColors: [bgGrey, green, blue],
                ),
              ),
              Container(
                color: Colors.transparent,
                width: _size.width(context),
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "AAPL",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    Text(
                      "BABA",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    Text(
                      "TWTR",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    Text(
                      "ABM",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                  ],
                ),
              ),
              Container(
                width: _size.width(context),
                height: 70,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: MaterialButton(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        onPressed: () {},
                        color: green,
                        child: Text(
                          "BUY",
                          style: TextStyle(
                              color: brown,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: MaterialButton(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        onPressed: () {},
                        color: Colors.white,
                        child: Text(
                          "SELL",
                          style: TextStyle(
                              color: brown,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: brown,
        height: 60,
        margin: EdgeInsets.symmetric(horizontal: 25),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(Icons.analytics_outlined)),
          IconButton(
              onPressed: () {},
              color: Colors.white30,
              icon: Icon(Icons.wallet_rounded)),
          IconButton(
              onPressed: () {},
              color: Colors.white30,
              icon: Icon(Icons.messenger)),
          IconButton(
              onPressed: () {},
              color: Colors.white30,
              icon: Icon(Icons.gif_box_outlined)),
        ]),
      ),
    );
  }

  Widget categWiget({required String title, required bool selected}) {
    return Container(
      height: 30,
      width: 65,
      margin: EdgeInsets.symmetric(horizontal: 7),
      decoration: selected
          ? BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20))
          : BoxDecoration(
              color: Colors.transparent,
              border: Border.all(width: 1.5, color: Colors.white),
              borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: selected ? brown : Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
      ),
    );
  }
}
