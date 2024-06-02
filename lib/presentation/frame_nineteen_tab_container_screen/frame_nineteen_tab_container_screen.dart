import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'package:thesisapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:thesisapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:thesisapp/presentation/frame_nineteen_page/frame_nineteen_page.dart';
import 'package:thesisapp/presentation/frame_twenty_page/frame_twenty_page.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

class FrameNineteenTabContainerScreen extends StatefulWidget {
  const FrameNineteenTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FrameNineteenTabContainerScreenState createState() =>
      FrameNineteenTabContainerScreenState();
}

class FrameNineteenTabContainerScreenState
    extends State<FrameNineteenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildThirtyEight(context),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 427.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 425.v,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              borderRadius: BorderRadius.circular(
                                20.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            decoration: AppDecoration.gradientGreenAFToGreenAF,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _buildTabview(context),
                                SizedBox(
                                  height: 328.v,
                                  child: TabBarView(
                                    controller: tabviewController,
                                    children: [
                                      FrameNineteenPage(),
                                      FrameNineteenPage(),
                                      FrameTwentyPage(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 127.h,
                            margin: EdgeInsets.only(
                              left: 18.h,
                              top: 9.v,
                            ),
                            decoration: AppDecoration.outlineBlack,
                            child: Text(
                              "240103",
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 18.h,
                              top: 8.v,
                            ),
                            child: Text(
                              "Rust Collection",
                              style: CustomTextStyles.bodyMediumBlack900,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 8.v,
                              right: 82.h,
                            ),
                            child: Text(
                              "Datw:",
                              style: CustomTextStyles.bodyMediumBlack900,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 9.v,
                              right: 35.h,
                            ),
                            child: Text(
                              "01/03/24",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
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

// Section Widget
  Widget _buildThirtyEight(BuildContext context) {
    return SizedBox(
      height: 233.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img58676233196f149e16fc0,
            height: 233.v,
            width: 360.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            alignment: Alignment.center,
          ),
          CustomAppBar(
            height: 30.v,
            leadingWidth: 39.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrow1,
              margin: EdgeInsets.only(
                left: 17.h,
                top: 9.v,
                bottom: 7.v,
              ),
            ),
            title: AppbarSubtitle(
              text: "Back",
              margin: EdgeInsets.only(left: 10.h),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 25.v,
      width: 317.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Imprima',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.black900.withOpacity(0.58),
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Imprima',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: appTheme.green700,
        tabs: [
          Tab(
            child: Text(
              "ACTION",
            ),
          ),
          Tab(
            child: Text(
              "REQUIREMENTS",
            ),
          ),
          Tab(
            child: Text(
              "HISTORY",
            ),
          ),
        ],
      ),
    );
  }
}
