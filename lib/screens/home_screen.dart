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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            backgroundColor: AppColors.darkBlue,
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: size.height * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: size.height * 0.02),
                      Row(
                        children: [
                          Container(
                            height: size.height * 0.13,
                            width: size.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: AppColors.gold),
                            ),
                            child: Lottie.asset(
                              "assets/jsons/image_picker.json",
                            ),
                          ),
                          SizedBox(width: size.width * 0.02),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "User Name",
                                style: TextStyle(
                                  color: AppColors.gold,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Divider(color: AppColors.gold, thickness: 5),
                              Text(
                                "example@email.com",
                                style: TextStyle(
                                  color: AppColors.gold,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Divider(color: AppColors.gold, thickness: 1),
                              Text(
                                "+200000000000",
                                style: TextStyle(
                                  color: AppColors.gold,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Divider(color: AppColors.gold, thickness: 1),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },

        backgroundColor: AppColors.gold,
        child: Icon(Icons.add, color: AppColors.darkBlue, size: 30),
      ),
    );
  }
}
