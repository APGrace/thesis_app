import 'package:thesisapp/presentation/frame_four_page/frame_four_page.dart';
import 'package:thesisapp/widgets/custom_elevated_button.dart';
import 'package:thesisapp/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';
import 'package:thesisapp/presentation/frame_eight_dialog/frame_eight_dialog.dart';
import 'package:thesisapp/presentation/frame_nine_dialog/frame_nine_dialog.dart';

// ignore_for_file: must_be_immutable
class FrameSixScreen extends StatelessWidget {
  FrameSixScreen({Key? key})
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
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildWidget(context),
                SizedBox(height: 6.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 47.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSELECTPHOTO(context),
                      _buildSTARTCAMERA(context)
                    ],
                  ),
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  height: 392.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      _buildNinetyOne(context),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle11,
                        height: 175.v,
                        width: 265.h,
                        radius: BorderRadius.circular(
                          20.h,
                        ),
                        alignment: Alignment.topCenter,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
            imagePath: ImageConstant.imgRectangle31,
            height: 157.v,
            width: 360.h,
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSELECTPHOTO(BuildContext context) {
    return CustomElevatedButton(
      width: 130.h,
      text: "SELECT PHOTO",
    );
  }

  /// Section Widget
  Widget _buildSTARTCAMERA(BuildContext context) {
    return CustomElevatedButton(
      width: 130.h,
      text: "START CAMERA",
      margin: EdgeInsets.only(left: 5.h),
    );
  }

  /// Section Widget
  Widget _buildDETECT(BuildContext context) {
    return CustomElevatedButton(
      height: 36.v,
      text: "DETECT",
      buttonTextStyle: CustomTextStyles.titleMediumBlack,
    );
  }

  /// Section Widget
  Widget _buildSOLUTION(BuildContext context) {
    return CustomElevatedButton(
      height: 36.v,
      width: 159.h,
      text: "SOLUTION",
      buttonStyle: CustomButtonStyles.fillCyan,
      buttonTextStyle: CustomTextStyles.titleSmallInterOnPrimaryContainer,
      onPressed: () {
        onTapSOLUTION(context);
      },
    );
  }

  /// Section Widget
  Widget _buildLEARNMORE(BuildContext context) {
    return CustomElevatedButton(
      height: 36.v,
      width: 159.h,
      text: "LEARN MORE!",
      buttonStyle: CustomButtonStyles.fillCyan,
      buttonTextStyle: CustomTextStyles.titleSmallInterOnPrimaryContainer,
      onPressed: () {
        onTapLEARNMORE(context);
      },
    );
  }

  /// Section Widget
  Widget _buildNinetyOne(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 47.h,
          vertical: 25.v,
        ),
        decoration: AppDecoration.gradientGreenAFToGreenAF,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 41.v),
            _buildDETECT(context),
            SizedBox(height: 17.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Type of Disease:",
                  style: CustomTextStyles.labelLargeInterBlack900,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Text(
                    "Leaf Spot",
                    style: CustomTextStyles.labelLargeInterDeeporange600,
                  ),
                )
              ],
            ),
            SizedBox(height: 31.v),
            _buildSOLUTION(context),
            SizedBox(height: 5.v),
            _buildLEARNMORE(context)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Dashboard:
        return AppRoutes.frameFourPage;
      case BottomBarEnum.Diagnose:
        return "/";
      case BottomBarEnum.Learn:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.frameFourPage:
        return FrameFourPage();
      default:
        return DefaultWidget();
    }
  }

  /// Displays a dialog with the [FrameEightDialog] content.
  onTapSOLUTION(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: FrameEightDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Displays a dialog with the [FrameNineDialog] content.
  onTapLEARNMORE(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: FrameNineDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
