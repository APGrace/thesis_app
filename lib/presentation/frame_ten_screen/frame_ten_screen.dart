import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:thesisapp/core/app_export.dart';
import 'package:thesisapp/widgets/app_bar/appbar_title.dart';
import 'package:thesisapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'package:thesisapp/presentation/frame_four_page/frame_four_page.dart';

class FrameTenScreen extends StatelessWidget {
  const FrameTenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 7.v),
              _buildHowToLiveThe(context),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 37.h),
                child: _buildFourGrid(context),
              ),
              SizedBox(height: 70.v),
              _buildSeven(context),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 73.v,
      title: AppbarTitle(
        text: "Learning Resources",
        margin: EdgeInsets.only(left: 12.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgHamburgerIcon2,
          margin: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  Widget _buildHowToLiveThe(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.h, right: 16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgHowToLiveThe,
            height: 132.v,
            width: 119.h,
            margin: EdgeInsets.only(bottom: 26.v),
          ),
          SizedBox(width: 6.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Why Trees?",
                  style: CustomTextStyles.labelLargeBlack900,
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 207.h,
                  child: ReadMoreText(
                    "Trees help clean the air we breathe, filter the water we drink, and provide habitat to over 80% of the world's terrestrial biodiversity.\nForests provide jobs to over 1.6 billion people, absorb harmful carbon from the atmosphere, and are key ingredients in 25% of all medicines.",
                    trimLines: 8,
                    colorClickableText: appTheme.green700,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "READ MORE",
                    moreStyle:
                        CustomTextStyles.labelLargeKarlaOnSecondaryContainer,
                    lessStyle:
                        CustomTextStyles.labelLargeKarlaOnSecondaryContainer,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFourGrid(BuildContext context) {
    return SizedBox(
      height: 340.v,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(right: 8.h), // Adjusted spacing here
              child: _buildFour(
                context,
                untitledDesign: ImageConstant.img79155724LeafI,
                importanceofEarlyDetection: "Leaf Diseases",
                onTapFour: () {
                  onTapFive(context);
                },
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(left: 8.h), // Adjusted spacing here
              child: GestureDetector(
                onTap: () {
                  onTapThree(context);
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 27.h, vertical: 11.v),
                  decoration: AppDecoration.outlineBlack900.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 14.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImagesRemovebgPreview,
                        height: 57.v,
                        width: 52.h,
                        margin: EdgeInsets.only(left: 10.h),
                      ),
                      SizedBox(height: 5.v), // Adjusted spacing here
                      Container(
                        width: 75.h,
                        margin: EdgeInsets.only(left: 1.h),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "Prevention & Management",
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.labelLargeLightgreen900,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSeven(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 49.v),
        decoration: AppDecoration.gradientGreenAFToGreenAF,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 13.h),
                child: _buildFour(
                  context,
                  untitledDesign: ImageConstant.imgUntitledDesign,
                  importanceofEarlyDetection: "Importance of Early Detection",
                  onTapFour: () {
                    onTapFour(context);
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: _buildFour(
                  context,
                  untitledDesign: ImageConstant.imgEcoEnvironment,
                  importanceofEarlyDetection: "Environmental Factors",
                  onTapFour: () {
                    onTapTwo(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFour(
    BuildContext context, {
    required String untitledDesign,
    required String importanceofEarlyDetection,
    Function? onTapFour,
  }) {
    return GestureDetector(
      onTap: () {
        onTapFour?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 8.v),
        decoration: AppDecoration.outlineBlack9002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 14.v),
            CustomImageView(
              imagePath: untitledDesign,
              height: 60.adaptSize,
              width: 60.adaptSize,
            ),
            SizedBox(height: 13.v),
            Container(
              width: 124.h,
              decoration: AppDecoration.outlineBlack,
              child: Text(
                importanceofEarlyDetection,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelLargeLightgreen900.copyWith(
                  color: appTheme.lightGreen900,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onTapFive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameElevenScreen);
  }

  void onTapThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameThirteenScreen);
  }

  void onTapFour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameFifteenScreen);
  }

  void onTapTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameSixteenScreen);
  }
}
