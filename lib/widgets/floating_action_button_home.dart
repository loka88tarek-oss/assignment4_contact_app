import 'dart:io';

import 'package:assignment4_contact_app/common/app_colors.dart';
import 'package:assignment4_contact_app/widgets/text_field_modsl_sheet.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

class FloatingActionButtonHomeScreen extends StatefulWidget {
  const FloatingActionButtonHomeScreen({super.key, required this.size});

  final Size size;

  @override
  State<FloatingActionButtonHomeScreen> createState() =>
      _FloatingActionButtonHomeScreenState();
}

class _FloatingActionButtonHomeScreenState
    extends State<FloatingActionButtonHomeScreen> {
  final ImagePicker _imagePicker = ImagePicker();
  File? _selectedImage;
  String _userName = '';
  String _email = '';
  String _phone = '';
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          useSafeArea: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          backgroundColor: AppColors.darkBlue,
          context: context,

          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (context, setModalState) {
                return SizedBox(
                  height: widget.size.height * 0.5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: widget.size.height * 0.02),
                        Row(
                          children: [
                            Container(
                              height: widget.size.height * 0.13,
                              width: widget.size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: AppColors.gold),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  pickImageFromGallery(setModalState);
                                },
                                child: _selectedImage != null
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.file(
                                          _selectedImage!,
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    : Lottie.asset(
                                        "assets/jsons/image_picker.json",
                                      ),
                              ),
                            ),
                            SizedBox(width: widget.size.width * 0.02),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _userName.isNotEmpty
                                      ? _userName
                                      : "User Name",
                                  style: TextStyle(
                                    color: AppColors.gold,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: widget.size.width * .5,
                                  child: Divider(
                                    color: AppColors.gold,
                                    thickness: 1,
                                  ),
                                ),
                                Text(
                                  _email.isNotEmpty
                                      ? _email
                                      : "example@email.com",
                                  style: TextStyle(
                                    color: AppColors.gold,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: widget.size.width * .5,
                                  child: Divider(
                                    color: AppColors.gold,
                                    thickness: 1,
                                  ),
                                ),
                                Text(
                                  _phone.isNotEmpty ? _phone : "+200000000000",
                                  style: TextStyle(
                                    color: AppColors.gold,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: widget.size.height * 0.02),

                        TextFieldOfModalSheet(
                          hintText: "Enter User Name",
                          keyboardType: TextInputType.text,
                          onChanged: (value) {
                            setModalState(() {
                              _userName = value;
                            });
                          },
                        ),
                        SizedBox(height: widget.size.height * 0.01),

                        TextFieldOfModalSheet(
                          hintText: "Enter User Email ",
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) {
                            setModalState(() {
                              _email = value;
                            });
                          },
                        ),
                        SizedBox(height: widget.size.height * 0.01),

                        TextFieldOfModalSheet(
                          hintText: "Enter User Phone",
                          keyboardType: TextInputType.phone,
                          onChanged: (value) {
                            setModalState(() {
                              _phone = value;
                            });
                          },
                        ),
                        SizedBox(height: widget.size.height * 0.015),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.gold,
                            padding: EdgeInsets.all(16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            "Enter user",
                            style: TextStyle(
                              color: AppColors.darkBlue,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },

      backgroundColor: AppColors.gold,
      child: Icon(Icons.add, color: AppColors.darkBlue, size: 30),
    );
  }

  Future<void> pickImageFromGallery(
    void Function(void Function()) setModalState,
  ) async {
    final XFile? pickedImage = await _imagePicker.pickImage(
      source: ImageSource.gallery,
      maxHeight: widget.size.height * 0.13,
      maxWidth: widget.size.width * 0.3,
    );
    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage.path);
      });
    }
  }
}
