import 'package:assignment4_contact_app/common/app_colors.dart';
import 'package:flutter/material.dart';

class ContactInfoWidget extends StatelessWidget {
  const ContactInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return                     SizedBox(
                      width: 112,
                      height: 178,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),

                            child: Image.asset(
                              ,
                              width: 120,
                              height: 190,
                              fit: BoxFit.cover,
                            ),
                          ),

                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              child: Container(
                                color: AppColors.gold,

                                child:Column(
                                  children: [
                                    
                                  ],
                                )
                              ),
                            ),
                          ),
                        ]
                      ),
    );
  }
}