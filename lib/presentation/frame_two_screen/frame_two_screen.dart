// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';
import 'package:thesisapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:thesisapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'package:thesisapp/widgets/custom_text_form_field.dart';

class FrameTwoScreen extends StatelessWidget {
  FrameTwoScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();
  TextEditingController editText1Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Handle back button press
        Navigator.pop(context);
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          resizeToAvoidBottomInset: false,
          appBar: _buildAppBar(context),
          body: _buildBody(context),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SizedBox(
      width: SizeUtils.width,
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
            imagePath: ImageConstant.imgRectangle6,
            height: 462.v,
            width: 360.h,
            alignment: Alignment.bottomCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(13.h),
              decoration: AppDecoration.gradientGreenAFToGreenAF,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppbarLeadingImage(
                          imagePath: ImageConstant.imgArrow1,
                          margin: EdgeInsets.only(top: 18.v, bottom: 23.v),
                          onTap: () {
                            Navigator.pop(context); // Navigate back
                          },
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 2.h),
                          decoration: AppDecoration.outlineBlack,
                          child: Text(
                            "Log In",
                            style: theme.textTheme.headlineLarge,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  _buildEditText1(context),
                  SizedBox(height: 16.v),
                  _buildEditText3(context),
                  SizedBox(height: 23.v),
                  _buildView(context),
                  SizedBox(height: 52.v),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 180.v,
      leadingWidth: 40.h,
      leading:
          Container(), // No need for leading as back button is handled separately
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

  Widget _buildEditText(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 45.v,
        width: 304.h,
        child: CustomTextFormField(
          width: 304.h,
          controller: editTextController,
          alignment: Alignment.topCenter,
          hintText: "", // No hint text
        ),
      ),
    );
  }

  Widget _buildEditText1(BuildContext context) {
    return SizedBox(
      height: 76.v,
      width: 304.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Username",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          _buildEditText(context)
        ],
      ),
    );
  }

  Widget _buildEditText2(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 45.v,
        width: 304.h,
        child: CustomTextFormField(
          width: 304.h,
          controller: editText1Controller,
          textInputAction: TextInputAction.done,
          alignment: Alignment.topCenter,
          obscureText: true,
          hintText: "", // No hint text
        ),
      ),
    );
  }

  Widget _buildEditText3(BuildContext context) {
    return SizedBox(
      height: 104.v,
      width: 304.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "Forgot Password?",
              style: CustomTextStyles.bodyMediumInknutAntiquaBlack900,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Password",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          _buildEditText2(context)
        ],
      ),
    );
  }

  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 78.v,
      width: 304.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          GestureDetector(
            onTap: () {
              // Handle login button tap
              Navigator.pushNamed(context,
                  AppRoutes.frameThreeScreen); // Navigate to Frame Three Screen
            },
            child: Container(
              height: 40.v,
              width: 304.h,
              margin: EdgeInsets.only(top: 6.v),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withOpacity(1),
                borderRadius: BorderRadius.circular(20.h),
              ),
              alignment: Alignment.center,
              child: Text(
                "Log In",
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 39.h),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context,
                      AppRoutes.frameSevenScreen); // Navigate to Sign Up screen
                },
                child: Text(
                  "Sign Up",
                  style: CustomTextStyles.bodyMediumInknutAntiquaLightgreen900
                      .copyWith(decoration: TextDecoration.underline),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 39.h, bottom: 1.v),
              child: Text(
                "Don't have an account?",
                style: CustomTextStyles
                    .bodyMediumInknutAntiquaOnSecondaryContainer,
              ),
            ),
          )
        ],
      ),
    );
  }
}
