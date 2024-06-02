import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';
import 'package:thesisapp/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:thesisapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'widgets/framefour_item_widget.dart';

class FrameFourPage extends StatelessWidget {
  const FrameFourPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Column(
              children: [
                SizedBox(height: 20.v),
                _buildHelloElias(context),
                SizedBox(
                  height: 451.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      _buildAddNew(context),
                      _buildView(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHelloElias(BuildContext context) {
    return SizedBox(
      height: 121.v,
      width: 316.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 20.v),
              decoration: AppDecoration.outlineBlack,
              child: Text(
                "Hello Elias!",
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "Your trees missed you!",
              style: CustomTextStyles.bodyLargeBlack900,
            ),
          ),
          CustomAppBar(
            height: 45.v,
            leadingWidth: 66.h,
            leading: AppbarLeadingCircleimage(
              imagePath: ImageConstant.imgEllipse10,
              margin: EdgeInsets.only(left: 21.h),
              onTap: () {
                onTapCircleImage(context);
              },
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgHamburgerIcon2,
                margin: EdgeInsets.fromLTRB(23.h, 8.v, 23.h, 2.v),
              )
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddNew(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 190.v,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 21.v,
        ),
        decoration: AppDecoration.gradientGreenAFToGreenAF,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 42.v,
                ),
                child: Text(
                  "Leaf Album",
                  style: CustomTextStyles.titleSmallKoHoBlack900,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 13.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5.v),
                            child: Text(
                              "55 leaves",
                              style: CustomTextStyles.labelMediumGray80001,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              onTapTxtMore(context);
                            },
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 242.h,
                                bottom: 2.v,
                              ),
                              child: Text(
                                "More",
                                style: CustomTextStyles.bodyMediumBlack90013,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 4.v),
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 71.v,
                        crossAxisCount: 4,
                        mainAxisSpacing: 12.h,
                        crossAxisSpacing: 12.h,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        return FramefourItemWidget();
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 226.v,
        width: 316.h,
        margin: EdgeInsets.only(top: 10.v),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(left: 2.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 19.h,
                  vertical: 21.v,
                ),
                decoration: AppDecoration.outlineBlack900.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 8.v),
                    Padding(
                      padding: EdgeInsets.only(right: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 25.v,
                            width: 20.h,
                            margin: EdgeInsets.only(top: 3.v),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onError,
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.black900.withOpacity(0.25),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(
                                    0,
                                    4,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 27.v,
                            width: 66.h,
                            margin: EdgeInsets.only(left: 4.h),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "Anthracnose",
                                    style: CustomTextStyles.labelLargeGray80001,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "25 Detected",
                                    style: CustomTextStyles
                                        .labelMediumErrorContainer,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 21.v),
                    Padding(
                      padding: EdgeInsets.only(right: 17.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 25.v,
                            width: 20.h,
                            margin: EdgeInsets.only(top: 1.v),
                            decoration: BoxDecoration(
                              color: appTheme.lightGreen10001,
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.black900.withOpacity(0.25),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(
                                    0,
                                    4,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: _buildRust(
                                context,
                                rust: "Leaf Spot",
                                detectedCounter: "11 Detected",
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Padding(
                      padding: EdgeInsets.only(right: 17.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 25.v,
                            width: 20.h,
                            margin: EdgeInsets.only(top: 2.v),
                            decoration: BoxDecoration(
                              color: appTheme.lightGreen500,
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.black900.withOpacity(0.25),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(
                                    0,
                                    4,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: _buildRust(
                                context,
                                rust: "Rust",
                                detectedCounter: "15 Detected",
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Padding(
                      padding: EdgeInsets.only(right: 64.h),
                      child: Text(
                        "Total: ",
                        style: CustomTextStyles.labelLargeGray80001,
                      ),
                    ),
                    Text(
                      "51 Detected Diseases",
                      style: CustomTextStyles.labelMediumErrorContainer,
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgGreenMinimalist,
              height: 161.v,
              width: 198.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 26.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildRust(
    BuildContext context, {
    required String rust,
    required String detectedCounter,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          rust,
          style: CustomTextStyles.labelLargeGray80001.copyWith(
            color: appTheme.gray80001,
          ),
        ),
        Text(
          detectedCounter,
          style: CustomTextStyles.labelMediumErrorContainer.copyWith(
            color: theme.colorScheme.errorContainer,
          ),
        ),
      ],
    );
  }

  /// Navigates to the frameSeventeenScreen when the action is triggered.
  onTapCircleImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameSeventeenScreen);
  }

  /// Navigates to the FrameTwentyoneScreen when the action is triggered.
  onTapTxtMore(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameTwentyoneScreen);
  }
}
