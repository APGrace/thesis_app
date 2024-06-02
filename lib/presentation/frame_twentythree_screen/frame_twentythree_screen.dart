import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:thesisapp/presentation/frame_four_page/frame_four_page.dart';
import 'package:thesisapp/widgets/custom_elevated_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:thesisapp/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FrameTwentythreeScreen extends StatelessWidget {
  FrameTwentythreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SingleChildScrollView(
          // Wrap with SingleChildScrollView
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildWidget(context),
                SizedBox(height: 16.v),
                Text(
                  "Upload image to detect disease",
                  style: CustomTextStyles.titleMediumBlack900Black,
                ),
                SizedBox(height: 26.v),
                SizedBox(
                  height: 380.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      _buildSixtyFour(context),
                      CustomImageView(
                        imagePath: ImageConstant.imgIconAddImage,
                        height: 197.v,
                        width: 172.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 11.v),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: DottedBorder(
                          color: appTheme.gray800,
                          padding: EdgeInsets.only(
                            left: 2.h,
                            top: 2.v,
                            right: 2.h,
                            bottom: 2.v,
                          ),
                          strokeWidth: 2.h,
                          dashPattern: [10, 5],
                          child: Container(
                            height: 220.v,
                            width: 250.h,
                            decoration: BoxDecoration(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return SizedBox(
      height: 157.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img16654623031851146x360,
            height: 146.v,
            width: 360.h,
            alignment: Alignment.topCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3,
            height: 157.v,
            width: 360.h,
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyFour(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 112.h,
          vertical: 52.v,
        ),
        decoration: AppDecoration.gradientGreenAFToGreenAF,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 83.v),
            CustomElevatedButton(
              text: "START CAMERA",
              margin: EdgeInsets.only(
                left: 4.h,
                right: 2.h,
              ),
              onPressed: () {
                onTapSTARTCAMERA(context);
              },
            ),
            SizedBox(height: 22.v),
            CustomElevatedButton(
              text: "SELECT PHOTO",
              margin: EdgeInsets.only(left: 4.h),
              onPressed: () {
                onTapSELECTPHOTO(context);
              },
            )
          ],
        ),
      ),
    );
  }

  /// Navigates to the frame FiveScreen when the action is triggered.
  onTapSTARTCAMERA(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cameraScreen);
  }

  /// Opens gallery to select photo.
  void onTapSELECTPHOTO(BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      // Do something with the selected image
    }
  }
}
