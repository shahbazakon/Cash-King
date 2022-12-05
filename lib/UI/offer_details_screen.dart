import 'package:cashking/utils/assets_path.dart';
import 'package:cashking/utils/colors.dart';
import 'package:flutter/material.dart';

class OfferDetailsScreen extends StatefulWidget {
  const OfferDetailsScreen({Key? key}) : super(key: key);

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
      ),
    );
  }
}
