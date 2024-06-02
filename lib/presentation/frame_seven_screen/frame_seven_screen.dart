import 'package:flutter/material.dart';

import 'package:thesisapp/core/app_export.dart';
import 'package:thesisapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:thesisapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'package:thesisapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FrameSevenScreen extends StatelessWidget {
  FrameSevenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  TextEditingController editText1Controller = TextEditingController();

  TextEditingController editText2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          child: SingleChildScrollView(
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img16654623031851,
                    height: 235.v,
                    width: 360.h,
                    alignment: Alignment.topCenter,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle6513x360,
                    height: 513.v,
                    width: 360.h,
                    alignment: Alignment.bottomCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 27.h,
                        vertical: 60.v,
                      ),
                      decoration: AppDecoration.gradientGreenAFToGreenAF,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildEditText(context),
                          SizedBox(height: 27.v),
                          _buildView(context),
                          SizedBox(height: 7.v)
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFreeLeavesIcon1571Thumb,
                    height: 36.v,
                    width: 37.h,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                      left: 13.h,
                      top: 132.v,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 53.h,
                        top: 114.v,
                      ),
                      decoration: AppDecoration.outlineBlack,
                      child: Text(
                        "Sign Up",
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 180.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 37.v,
          bottom: 140.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Back",
        margin: EdgeInsets.only(
          left: 10.h,
          top: 27.v,
          bottom: 132.v,
        ),
      ),
      styleType: Style.bgGradientnamegreenA100f9namegreenA100f9,
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 47.v,
        width: 304.h,
        margin: EdgeInsets.only(bottom: 66.v),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 36.v,
                width: 304.h,
                margin: EdgeInsets.only(top: 3.v),
                decoration: BoxDecoration(
                  color: appTheme.gray400,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 117.h,
                margin: EdgeInsets.only(left: 13.h),
                child: Text(
                  "Type here...",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeOnPrimaryContainer18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 47.v,
        width: 304.h,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: CustomTextFormField(
                width: 304.h,
                controller: editTextController,
                alignment: Alignment.topCenter,
                obscureText: true,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 117.h,
                margin: EdgeInsets.only(left: 13.h),
                child: Text(
                  "Type here...",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeOnPrimaryContainer18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 47.v,
        width: 304.h,
        margin: EdgeInsets.only(top: 93.v),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomTextFormField(
              width: 304.h,
              controller: editText1Controller,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 117.h,
                margin: EdgeInsets.only(left: 13.h),
                child: Text(
                  "Type here...",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeOnPrimaryContainer18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 47.v,
        width: 304.h,
        margin: EdgeInsets.only(top: 27.v),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomTextFormField(
              width: 304.h,
              controller: editText2Controller,
              textInputAction: TextInputAction.done,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 117.h,
                margin: EdgeInsets.only(left: 13.h),
                child: Text(
                  "Type here...",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeOnPrimaryContainer18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return SizedBox(
      height: 272.v,
      width: 305.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _buildTwo(context),
          _buildThree(context),
          _buildOne(context),
          _buildSix(context),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 132.h,
              margin: EdgeInsets.only(
                left: 1.h,
                bottom: 98.v,
              ),
              child: Text(
                "Phone Number",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 84.h,
              margin: EdgeInsets.only(
                left: 1.h,
                bottom: 32.v,
              ),
              child: Text(
                "Password",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 81.h,
              margin: EdgeInsets.only(top: 65.v),
              child: Text(
                "Fullname",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 89.h,
              margin: EdgeInsets.only(left: 1.h),
              child: Text(
                "Username",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 78.v,
      width: 304.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 37.v,
              width: 304.h,
              margin: EdgeInsets.only(top: 10.v),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withOpacity(1),
                borderRadius: BorderRadius.circular(
                  18.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 89.h,
                        margin: EdgeInsets.only(right: 16.h),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "Sign Up",
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "Already have an account?",
                      style: CustomTextStyles
                          .bodyMediumInknutAntiquaOnSecondaryContainer,
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    onTapTxtLogIn(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 44.v,
                    ),
                    child: Text("Log In",
                        style: CustomTextStyles
                            .bodyMediumInknutAntiquaLightgreen900WithUnderline),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the frame TwoScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameTwoScreen);
  }
}
