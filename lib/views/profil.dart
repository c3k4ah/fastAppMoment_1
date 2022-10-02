// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bullcapital/constant/colors.dart';

import 'package:flutter/material.dart';

import '../mediaquery.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  final CustomSize _size = CustomSize();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGrey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgGrey,
        leading: const SizedBox(),
        flexibleSpace: Container(
          width: _size.width(context),
          height: 70,
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/73609825?v=4'),
                      radius: 25,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Dominick",
                        style: TextStyle(
                            fontSize: 18,
                            color: brown,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                              text: '\nRandriamanantena',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: brown.withOpacity(.6))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 40,
                height: 40,
                color: Colors.transparent,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_active,
                      color: brown,
                    )),
              )
            ],
          ),
        ),
      ),
      body: SizedBox(
          height: _size.height(context),
          width: _size.width(context),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: _size.width(context),
                  height: _size.height(context) * .25,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(30),
                  color: brown,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text: "Tool you ",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: "needs to put",
                                style: TextStyle(
                                  color: green,
                                )),
                            TextSpan(
                              text: ' your money in motion.',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            Container(
                              color: Colors.transparent,
                              width: 70,
                              height: 50,
                              child: Stack(children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: brown, width: 2),
                                        shape: BoxShape.circle),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://avatars.githubusercontent.com/u/73609825?v=4'),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: brown, width: 2),
                                        shape: BoxShape.circle),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://avatars.githubusercontent.com/u/73609825?v=4'),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: brown, width: 2),
                                        shape: BoxShape.circle),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://avatars.githubusercontent.com/u/73609825?v=4'),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "5k+ Community",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: _size.width(context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total investisment",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\$ 570,422.10",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: _size.width(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Gain",
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Icon(
                                Icons.arrow_drop_up,
                                size: 30,
                              )
                            ],
                          ),
                          Text(
                            "\$ 323,535",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 22),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Loss",
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 30,
                              )
                            ],
                          ),
                          Text(
                            "\$ 323,535",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 22),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 40,
                        height: 40,
                        child: MaterialButton(
                          padding: EdgeInsets.zero,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          onPressed: () {},
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: _size.width(context),
                  height: _size.height(context) * .25,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      cardList(
                          title: "Stocks",
                          color: blue,
                          icon: Icons.contrast,
                          prix: "150,23"),
                      cardList(
                          title: "Crypto",
                          color: green.withOpacity(.7),
                          icon: Icons.money,
                          prix: "750,19"),
                      cardList(
                          title: "Forex",
                          color: green,
                          icon: Icons.analytics,
                          prix: "150,23"),
                    ],
                  ),
                ),
              ],
            ),
          )),
      bottomNavigationBar: Container(
        color: bgGrey,
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 25),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          IconButton(
              onPressed: () {},
              color: Colors.black54,
              icon: Icon(Icons.analytics_outlined)),
          IconButton(
              onPressed: () {},
              color: Colors.black,
              icon: Icon(Icons.wallet_rounded)),
          IconButton(
              onPressed: () {},
              color: Colors.black54,
              icon: Icon(Icons.messenger)),
          IconButton(
              onPressed: () {},
              color: Colors.black54,
              icon: Icon(Icons.gif_box_outlined)),
        ]),
      ),
    );
  }

  Widget cardList(
      {required Color color,
      required IconData icon,
      required String prix,
      required String title}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding: EdgeInsets.all(15),
      width: 150,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            color: color,
            child: Icon(icon),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              Text(
                "\$ $prix",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
