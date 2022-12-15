import 'dart:convert' show json;
import 'package:cashking/utils/assets_path.dart';
import 'package:cashking/utils/colors.dart';
import 'package:flutter/material.dart';
// ignore: library_prefixes
import 'package:flutter/services.dart' as rootBundle;
import 'package:marquee/marquee.dart';
import '../../detailsmodel';
import '../offer_details_screen.dart';

class AllOffersScreen extends StatelessWidget {
  const AllOffersScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future readJasonData() async {
      final jasondata = await rootBundle.rootBundle
          .loadString("assets/sample-jsons/dummy_tasks.json");
      final list = json.decode(jasondata) as dynamic;
      return list.map((e) => DetailsModel.fromJson(e));
    }

    return FutureBuilder(
        future: readJasonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(child: Text("${data.error}"));
          } else if (data.hasData) {
            return SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 50,
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Marquee(
                        text:
                            "Rakesh earned 120 from BookMyShow Offers . Sameer earned 120 from BookMyShow Offers .",
                        style: const TextStyle(
                          backgroundColor: Color.fromRGBO(229, 229, 229, 1),
                        ),
                        scrollAxis: Axis.horizontal,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.local_fire_department_outlined,
                        color: Colors.orange,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Trending Offers",
                            style: TextStyle(
                                color: Color.fromRGBO(124, 124, 124, 1)),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, left: 20),
                  child: SizedBox(
                    height: 200,
                    child: Expanded(
                      child: ListView.builder(
                        itemCount: 1,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              scrolablecard(
                                  imageUrl: AppAssets.image1,
                                  title: "Alto's Odysseyz",
                                  amount: "Get Rs. 230",
                                  userReview: "4,687 users"),
                              scrolablecard(
                                  imageUrl: AppAssets.image3,
                                  title: "2 Player Games",
                                  amount: "Get Rs. 100",
                                  userReview: "4,687 users"),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(
                      Icons.app_registration_sharp,
                      color: AppColors.blue,
                    ),
                  ),
                  Text(
                    "More Offers",
                    style: TextStyle(fontSize: 16, color: AppColors.greylite),
                  )
                ]),
                listtiles(
                  imageUrl: AppAssets.icon1,
                  title: "Alto's Odysseyz",
                  subtitle: "Get ₹230",
                  trailing: "23,567",
                  borderColor: AppColors.green,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OfferDetailsScreen(
                                  imageURL: AppAssets.icon1,
                                )));
                  },
                ),
                listtiles(
                    imageUrl: AppAssets.icon2,
                    title: "Alto's Odysseyz",
                    subtitle: "Get  ₹230",
                    trailing: "23,567",
                    borderColor: AppColors.purple,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => OfferDetailsScreen(
                                    imageURL: AppAssets.icon2,
                                  ))));
                    }),
                listtiles(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OfferDetailsScreen(
                                  imageURL: AppAssets.icon3,
                                )));
                  },
                  imageUrl: AppAssets.icon3,
                  title: "Alto's Odysseyz",
                  subtitle: "Get  ₹230",
                  trailing: "23,567",
                  borderColor: AppColors.blue,
                ),
                listtiles(
                  imageUrl: AppAssets.icon4,
                  title: "Alto's Odysseyz",
                  subtitle: "Get  ₹230",
                  trailing: "23,567",
                  borderColor: AppColors.pink,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                OfferDetailsScreen(imageURL: AppAssets.icon4)));
                  },
                ),
              ]),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}

Widget listtiles({
  String? imageUrl,
  String? title = "",
  String? subtitle = "",
  Color? borderColor = Colors.black,
  String? trailing = "",
  Function()? onTap,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor!, width: 2),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        onTap: onTap,
        leading: SizedBox(
            height: 50,
            width: 50,
            child: Image.asset(
              imageUrl!,
              fit: BoxFit.cover,
            )),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            title!,
            style: const TextStyle(fontSize: 15),
          ),
        ),
        subtitle: Text(
          subtitle!,
          style: const TextStyle(color: Colors.blue),
        ),
        trailing: Text(trailing!, style: const TextStyle(color: Colors.amber)),
      ),
    ),
  );
}

Widget scrolablecard(
    {String? imageUrl,
    String? title = "",
    String? amount = "",
    String? userReview = ""}) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Stack(
      children: [
        SizedBox(
          width: 190,
          height: 190,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              ///? !
              imageUrl!,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.black87,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(15))),
            width: 190,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title!,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  Text(
                    amount!,
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.flash_on,
                        size: 14,
                        color: Colors.amber,
                      ),
                      Text(userReview!,
                          style: const TextStyle(
                              fontSize: 10, color: Colors.white))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
