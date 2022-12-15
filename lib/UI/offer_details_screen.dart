import 'package:cashking/utils/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OfferDetailsScreen extends StatefulWidget {
  String? imageURL;

  OfferDetailsScreen({Key? key, this.imageURL}) : super(key: key);

  @override
  State<OfferDetailsScreen> createState() => _OfferDetailsScreenState();
}

class _OfferDetailsScreenState extends State<OfferDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColors.blue,
              title: const Text("offers details"),
            ),
            body: Column(children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: ListTile(
                  leading: Image.asset(
                    widget.imageURL!,
                    fit: BoxFit.cover,
                  ),
                  title: const Text(
                    "Worksection",
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: Text(
                    "Focus on your project, we'll take care of the routine",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Divider(
                  color: Colors.grey,
                  height: 10,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    " Steps  (1/4)",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      border: Border.all(color: Colors.green, width: 3)),
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.green,
                                    border: Border.all(color: Colors.green)),
                                child: const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )),
                            StepOne(),
                          ],
                        ),
                        Container(
                            padding: const EdgeInsets.only(
                                top: 5, left: 10, right: 10, bottom: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.green,
                                border: Border.all(color: Colors.green)),
                            child: const Text(
                              "₹20",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.amber, width: 3)),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.amber,
                                          border:
                                              Border.all(color: Colors.amber)),
                                      child: const Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      )),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("Complete 3 offers"),
                                  ),
                                ],
                              ),
                              Container(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 10, right: 10, bottom: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.amber,
                                      border: Border.all(color: Colors.amber)),
                                  child: const Text("₹20"))
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 153, 173, 183)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              refer(title: "Refer Workstation to friend"),
              refer(title: "Withdraw first amount"),
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.flash_on,
                    color: Colors.amber,
                  ),
                  Text(
                    "23,567 users has already participated",
                    style: TextStyle(color: Colors.amber),
                  )
                ],
              ),
              const SizedBox(height: 10),
              ConstrainedBox(
                constraints: const BoxConstraints.tightFor(
                  width: 320,
                  height: 50,
                ),
                child: ElevatedButton(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: const Text(
                    "Get ₹ 230",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ])));
  }

  // ignore: non_constant_identifier_names
  Padding StepOne() {
    return const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Text(
        "Install the application",
      ),
    );
  }

  Padding refer({
    String? title = "",
  }) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 217, 215, 215),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              border:
                  Border.all(color: const Color.fromARGB(255, 217, 215, 215))),
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: const CircleAvatar(
                              backgroundColor: Colors.grey,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(title!,
                              style: const TextStyle(
                                fontSize: 16,
                              )),
                        ),
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.only(
                            top: 5, left: 10, right: 10, bottom: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                            border: Border.all(color: Colors.white)),
                        child: const Text("₹20"))
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
