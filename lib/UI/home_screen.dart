import 'package:flutter/material.dart';
import '../utils/assets_path.dart';
import '../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              ckAppbar(size),
            ],
          ),
        ),
      ),
    );
  }

  Container ckAppbar(Size size) {
    return Container(
      height: size.height * 0.1,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(color: AppColors.blueLite),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    // ignore: todo
                    // TODO: Add Menu Functionality
                  },
                  icon: Icon(
                    Icons.menu_outlined,
                    color: AppColors.white,
                  )),
              Text(
                "Hey Shubham",
                style: TextStyle(color: AppColors.white, fontSize: 15),
              )
            ],
          ),
          Container(
            height: size.height * 0.04,
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
                // Image.asset(AppAssets.circleWallet),
                CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(AppAssets.circleWallet),
                ),
                const Text(
                  '₹ 452',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
