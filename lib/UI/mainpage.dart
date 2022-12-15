import 'dart:core';
import 'package:cashking/UI/tabs/all_offers_screen.dart';
import 'package:cashking/UI/tabs/gifts_screen.dart';
import 'package:cashking/UI/tabs/my_offers_screen.dart';
import 'package:cashking/UI/tabs/upcoming_page.dart';
import 'package:flutter/material.dart';
import '../utils/assets_path.dart';
import '../utils/colors.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: DefaultTabController(
            length: 4,
            child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(60),
                  child: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.blue,
                    title: const Text("Hey shubham"),
                    leading: const Icon(Icons.menu_sharp),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          width: size.width * 0.25,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 2),
                                    blurRadius: 1,
                                    spreadRadius: 1),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: 12,
                                backgroundImage:
                                    AssetImage(AppAssets.circleWallet),
                              ),
                              const Text(
                                '₹ 452',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                body: Column(
                  children: [
                    Container(
                      height: 65,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child:
                          const TabBar(indicatorColor: Colors.lightBlue, tabs: [
                        Tab(
                          icon: Icon(
                            Icons.category,
                            color: Colors.blue,
                          ),
                          child: Text(
                            "All Offers",
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ),
                        Tab(
                          icon: Icon(Icons.card_giftcard_sharp,
                              color: Colors.red),
                          child: Text(
                            "Gifts",
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ),
                        Tab(
                          icon: Icon(Icons.access_time,
                              color: Colors.orangeAccent),
                          child: Text(
                            "Upcoming",
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ),
                        Tab(
                          icon: Icon(Icons.check_circle_outline,
                              color: Color.fromARGB(255, 200, 13, 233)),
                          child: Text(
                            "My offers",
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ),
                      ]),
                    ),
                    const Expanded(
                      child: TabBarView(children: [
                        AllOffersScreen(),
                        Giftspagescreen(),
                        Upcomingpagecreen(),
                        myofferesscreen(),
                      ]),
                    ),
                  ],
                ))));
  }
}
