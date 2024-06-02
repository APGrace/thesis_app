import 'package:thesisapp/presentation/frame_four_page/frame_four_page.dart';
import 'package:thesisapp/widgets/custom_elevated_button.dart';
import 'package:thesisapp/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

class FrameSeventeenScreen extends StatefulWidget {
  FrameSeventeenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<FrameSeventeenScreen> createState() => _FrameSeventeenScreenState();
}

class _FrameSeventeenScreenState extends State<FrameSeventeenScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.greenA100,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildProfile(context),
                Container(
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "Elias McKensey",
                    style: CustomTextStyles.titleSmallInknutAntiqua,
                  ),
                ),
                SizedBox(height: 2.v),
                SizedBox(
                  height: 471.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle6466x360,
                        height: 466.v,
                        width: 360.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 43.v,
                          ),
                          decoration: AppDecoration.gradientGreenAFToGreenAF,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Username",
                                style: CustomTextStyles
                                    .titleSmallInterBlack900SemiBold,
                              ),
                              Text(
                                "elias.mckensey@gmail.com",
                                style: CustomTextStyles.titleSmallInknutAntiqua,
                              ),
                              SizedBox(height: 25.v),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "Fullname",
                                  style: CustomTextStyles
                                      .titleSmallInterBlack900SemiBold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "Elias McKensey",
                                  style:
                                      CustomTextStyles.titleSmallInknutAntiqua,
                                ),
                              ),
                              SizedBox(height: 25.v),
                              Container(
                                height: 55.v,
                                width: 108.h,
                                margin: EdgeInsets.only(left: 2.h),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        "Phone Number",
                                        style: CustomTextStyles
                                            .titleSmallInterBlack900SemiBold,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        "09123563950",
                                        style: CustomTextStyles
                                            .titleSmallInknutAntiqua,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 25.v),
                              SizedBox(
                                height: 52.v,
                                width: 84.h,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 2.h),
                                        child: Text(
                                          "Password",
                                          style: CustomTextStyles
                                              .titleSmallInterBlack900SemiBold,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        "**********",
                                        style: CustomTextStyles
                                            .titleSmallInknutAntiqua,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 18.v),
                              CustomElevatedButton(
                                height: 35.v,
                                width: 185.h,
                                text: "Edit Profile",
                                buttonStyle:
                                    CustomButtonStyles.outlineBlackTL10,
                                buttonTextStyle: CustomTextStyles
                                    .titleMediumKoHoLightgreen5001,
                                alignment: Alignment.center,
                              ),
                              SizedBox(height: 34.v),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        //bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return SizedBox(
      height: 129.v,
      width: 359.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 154.h,
                vertical: 23.v,
              ),
              decoration: AppDecoration.gradientGreenAFToGreenAF,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  Text(
                    "Profile",
                    style: CustomTextStyles
                        .titleMediumOnSecondaryContainerSemiBold,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipsell,
            height: 65.adaptSize,
            width: 65.adaptSize,
            radius: BorderRadius.circular(
              32.h,
            ),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
