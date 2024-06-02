import 'package:flutter/material.dart';
import 'package:thesisapp/widgets/custom_elevated_button.dart';
import 'package:thesisapp/widgets/custom_outlined_button.dart';
import 'package:thesisapp/core/app_export.dart';

class FrameOneScreen extends StatelessWidget {
  const FrameOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 45.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 41.h, top: 25.v),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgFreeLeavesIcon1571Thumb,
                                      height: 32.v,
                                      width: 35.h,
                                      margin: EdgeInsets.only(right: 6.h),
                                    ),
                                    Text(
                                      "Welcome",
                                      style: CustomTextStyles.headlineLarge32,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 100.v),
                              Opacity(
                                opacity: 0.5,
                                child: CustomImageView(
                                  imagePath: ImageConstant.img1665462303185R,
                                  height: 468.v,
                                  width: double.infinity,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.h,
                                vertical: 20.v,
                              ),
                              decoration:
                                  AppDecoration.gradientGreenAFToGreenAF,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomElevatedButton(
                                    height: 52.v,
                                    text: "Log in",
                                    buttonStyle:
                                        CustomButtonStyles.outlineBlack,
                                    buttonTextStyle:
                                        theme.textTheme.titleLarge!,
                                    onPressed: () {
                                      onTapLogIn(context);
                                    },
                                  ),
                                  SizedBox(height: 15.v),
                                  CustomOutlinedButton(
                                    text: "Sign Up",
                                    onPressed: () {
                                      onTapSignUp(context);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the frame TwoScreen when the action is triggered.
  void onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameTwoScreen);
  }

  /// Navigates to the frameSevenScreen when the action is triggered.
  void onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameSevenScreen);
  }
}
