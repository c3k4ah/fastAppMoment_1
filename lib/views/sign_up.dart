// ignore_for_file: prefer_const_constructors

import 'package:bullcapital/constant/colors.dart';
import 'package:bullcapital/mediaquery.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final CustomSize _size = CustomSize();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGrey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgGrey,
        flexibleSpace: Container(
          width: _size.width(context),
          height: 60,
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Bull \nCapital",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Container(
                width: 40,
                height: 40,
                color: Colors.black,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FluentSystemIcons.ic_fluent_list_filled,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
      ),
      body: Container(
        height: _size.height(context),
        width: _size.width(context),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Container(
                color: Colors.transparent,
                width: 110,
                height: 50,
                child: Stack(children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      backgroundColor: green,
                      radius: 40,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                    ),
                  )
                ]),
              ),
              Container(
                width: _size.width(context),
                height: _size.height(context) * .25,
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Investing \nSimplified",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 70),
                ),
              ),
              Container(
                width: _size.width(context) * .9,
                height: 50,
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Commission-free investing, plus the tool you need to put your money.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
              ),
              Container(
                width: _size.width(context),
                height: _size.height(context) * .4,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: ExactAssetImage(
                            'assets/images/whiteBullHead.png'))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 150,
                      child: MaterialButton(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        onPressed: () {},
                        color: Colors.black,
                        child: Text(
                          "SIGNUP",
                          style: TextStyle(
                              color: green,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _size.height(context) * .15,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
