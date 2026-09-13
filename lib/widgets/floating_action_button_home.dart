import 'package:assignment4_contact_app/common/app_colors.dart';
import 'package:assignment4_contact_app/widgets/text_field_modsl_sheet.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FloatingActionButtonHomeScreen extends StatelessWidget {
  const FloatingActionButtonHomeScreen({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
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
            return SizedBox(
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
                    SizedBox(height: size.height * 0.02),
    
                   TextFieldOfModalSheet(hintText: "Enter User Name"),
                   SizedBox(height: size.height * 0.01),
    
                   TextFieldOfModalSheet(hintText: "Enter User Email "),
                   SizedBox(height: size.height * 0.01),
    
                   TextFieldOfModalSheet(hintText: "Enter User Phone"),
                              SizedBox(height: size.height * 0.015),
                   ElevatedButton(onPressed: (){},
                   style:ElevatedButton.styleFrom(
                    backgroundColor:AppColors.gold,
                    padding: EdgeInsets.all( 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                   )
                   , child: Text("Enter user",style: TextStyle(color: AppColors.darkBlue,fontSize: 20,fontWeight: FontWeight.w400),))
                  ],
                ),
              ),
            );
          },
        );
        
      },
    
      backgroundColor: AppColors.gold,
      child: Icon(Icons.add, color: AppColors.darkBlue, size: 30),
    );
  }
}

