// import 'package:flutter/material.dart';
// import '../utils/assets_path.dart';
// import '../utils/colors.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: DefaultTabController(
//         length: 4,
//         child: Scaffold(
//           body: Column(
//             children: [
//               ckAppbar(size),
//               const TabBar(indicatorColor: Colors.lightBlue, tabs: [
//                 Tab(
//                   icon: Icon(
//                     Icons.category,
//                     color: Colors.blue,
//                   ),
//                   child: Text(
//                     "All Offers",
//                     style: TextStyle(color: Colors.black, fontSize: 10),
//                   ),
//                 ),
//                 Tab(
//                   icon: Icon(Icons.card_giftcard_sharp, color: Colors.red),
//                   child: Text(
//                     "Gifts",
//                     style: TextStyle(color: Colors.black, fontSize: 10),
//                   ),
//                 ),
//                 Tab(
//                   icon: Icon(Icons.access_time, color: Colors.orangeAccent),
//                   child: Text(
//                     "Upcoming",
//                     style: TextStyle(color: Colors.black, fontSize: 10),
//                   ),
//                 ),
//                 Tab(
//                   icon: Icon(Icons.check_circle_outline,
//                       color: Color.fromARGB(255, 200, 13, 233)),
//                   child: Text(
//                     "My offers",
//                     style: TextStyle(color: Colors.black, fontSize: 10),
//                   ),
//                 ),
//               ]),
//               TabBarView(children: [
//                 Container(height: 100, width: 200, child: Text("All offers")),
//                 Container(height: 100, width: 200, child: Text("Gift")),
//                 Container(height: 100, width: 200, child: Text("Upcoming")),
//                 Container(height: 100, width: 200, child: Text("My Offers")),
//               ]),

//               // const SizedBox(height: 50),
//               // Padding(
//               //   padding: const EdgeInsets.symmetric(horizontal: 20),
//               //   child:
// Row(
//               //     children: [
//               //       const Icon(
//               //         Icons.local_fire_department_outlined,
//               //         color: Colors.orange,
//               //       ),
//               //       TextButton(
//               //           onPressed: () {},
//               //           child: const Text(
//               //             "Trending Offers",
//               //             style: TextStyle(color: Colors.black54),
//               //           )),
//               //     ],
//               //   ),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Container ckAppbar(Size size) {
//     return Container(
//       height: size.height * 0.1,
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       decoration: BoxDecoration(color: AppColors.blueLite),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               IconButton(
//                   onPressed: () {
//                     // ignore: todo
//                     // TODO: Add Menu Functionality
//                   },
//                   icon: Icon(
//                     Icons.menu_outlined,
//                     color: AppColors.white,
//                   )),
//               Text(
//                 "Hey Shubham",
//                 style: TextStyle(color: AppColors.white, fontSize: 15),
//               )
//             ],
//           ),
//           Container(
//             height: size.height * 0.04,
//             width: size.width * 0.25,
//             decoration: BoxDecoration(
//                 color: AppColors.white,
//                 borderRadius: BorderRadius.circular(50),
//                 boxShadow: const [
//                   BoxShadow(
//                       color: Colors.black26,
//                       offset: Offset(0, 2),
//                       blurRadius: 1,
//                       spreadRadius: 1),
//                 ]),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 // Image.asset(AppAssets.circleWallet),
//                 CircleAvatar(
//                   radius: 12,
//                   backgroundImage: AssetImage(AppAssets.circleWallet),
//                 ),
//                 const Text(
//                   '₹ 452',
//                   style: TextStyle(fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
