import '../frame_twentytwo_dialog/frame_twentytwo_dialog.dart';
import '../frame_eight_dialog/frame_eight_dialog.dart';
import '../frame_nine_dialog/frame_nine_dialog.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.fillOnPrimaryContainer,
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Four - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameFourContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame TwentyOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameTwentyoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Eighteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameEighteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Nineteen - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.frameNineteenTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Ten",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameTenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Seventeen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameSeventeenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame TwentyThree",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameTwentythreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Twentytwo Dialog",
                          onTapScreenTitle: () =>
                              onTapDialogTitle(context, FrameTwentytwoDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Eight - Dialog",
                          onTapScreenTitle: () =>
                              onTapDialogTitle(context, FrameEightDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Nine - Dialog",
                          onTapScreenTitle: () =>
                              onTapDialogTitle(context, FrameNineDialog()),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Eleven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameElevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Twelve",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameTwelveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Thirteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Fourteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameFourteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Fifteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameFifteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Sixteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameSixteenScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.blueGray400,
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.black900,
          ),
        ],
      ),
    );
  }

  /// Common click event for dialog
  void onTapDialogTitle(
    BuildContext context,
    Widget className,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return className;
      },
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray400,
            ),
          ],
        ),
      ),
    );
  }

  ///Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
