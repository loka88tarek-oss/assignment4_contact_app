import 'package:assignment4_contact_app/common/app_assets.dart';
import 'package:assignment4_contact_app/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 117,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10,top: 5, bottom: 5),
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
      floatingActionButton:FloatingActionButton(onPressed: (){},
      backgroundColor: AppColors.gold,
      child: Icon(Icons.add,color: AppColors.darkBlue,size: 30,),
      )
    );
  }
}
