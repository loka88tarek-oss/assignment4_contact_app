import 'dart:io';

import 'package:assignment4_contact_app/common/app_assets.dart';
import 'package:assignment4_contact_app/common/app_colors.dart';
import 'package:assignment4_contact_app/widgets/floating_action_button_home.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 

  @override
  Widget build(BuildContext context) {
   
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 117,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
          child: Image.asset(AppAssets.appBarImage),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: size.height * 0.09),
          Lottie.asset("assets/jsons/empty_list.json"),
          SizedBox(height: size.height * 0.05),
          Text(
            "There is No Contacts Added Here",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.gold,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButtonHomeScreen(size: size),
   
    );
  }
 

}


