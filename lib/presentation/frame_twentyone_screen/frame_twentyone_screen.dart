import 'package:thesisapp/presentation/frame_four_page/frame_four_page.dart';
import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'package:thesisapp/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:thesisapp/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/zipcode_item_widget.dart';
import 'widgets/frametwentyone_item_widget.dart';
import 'widgets/zipcode1_item_widget.dart';
import 'package:thesisapp/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FrameTwentyoneScreen extends StatelessWidget {
  FrameTwentyoneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              _buildLeafDisease(context),
              Container(
                height: 456.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 8.v,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    _buildAddNew(context),
                    _buildAnthracnoseAlbum(context)
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildLeafDisease(BuildContext context) {
    return SizedBox(
      height: 119.v,
      width: 316.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 18.v),
              decoration: AppDecoration.outlineBlack,
              child: Text(
                "Leaf Disease",
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "Elias's leaf collection",
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
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddNew(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 10.h,
          bottom: 8.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "4 leaves",
              style: CustomTextStyles.labelMediumGray80001,
            ),
            SizedBox(height: 7.v),
            SizedBox(
              height: 70.v,
              child: ListView.separated(
                padding: EdgeInsets.only(right: 12.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 12.h,
                  );
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ZipcodeItemWidget();
                },
              ),
            ),
            SizedBox(height: 13.v),
            Text(
              "Rust Album",
              style: CustomTextStyles.titleSmallKoHoBlack900,
            ),
            Text(
              "55 leaves",
              style: CustomTextStyles.labelMediumGray80001,
            ),
            SizedBox(height: 5.v),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 71.v,
                crossAxisCount: 4,
                mainAxisSpacing: 11.h,
                crossAxisSpacing: 11.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return FrametwentyoneItemWidget(
                  onTapTxtZipcode: () {
                    onTapTxtZipcode(context);
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }

  ///Section Widget
  Widget _buildAnthracnoseAlbum(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 11.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Anthracnose Album",
                style: CustomTextStyles.titleSmallKoHoBlack900,
              ),
              Text(
                "5 leaves",
                style: CustomTextStyles.labelMediumGray80001,
              ),
              SizedBox(height: 7.v),
              Expanded(
                child: SizedBox(
                  height: 70.v,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 12.h,
                      );
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Zipcode1ItemWidget();
                    },
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              Text(
                "Leaf Spot Album",
                style: CustomTextStyles.titleSmallBlack900,
              )
            ],
          ),
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

  /// Navigates to the frameSeventeenScreen when the action is triggered.
  onTapCircleImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameSeventeenScreen);
  }

  /// Navigates to the frame EighteenScreen when the action is triggered.
  onTapTxtZipcode(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameEighteenScreen);
  }
}
