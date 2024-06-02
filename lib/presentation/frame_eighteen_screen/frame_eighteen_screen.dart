import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'package:thesisapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:thesisapp/widgets/app_bar/appbar_subtitle.dart';
import 'widgets/frameeighteen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

class FrameEighteenScreen extends StatelessWidget {
  const FrameEighteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildThirtyTwo(context),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 428.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
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
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 50.v),
                            decoration: AppDecoration.gradientGreenAFToGreenAF,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 5.v),
                                _buildACTION(context),
                                SizedBox(height: 5.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                    width: 115.h,
                                    child: Divider(
                                      color: appTheme.green700,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 25.h),
                                    child: Text(
                                      "Recommended:",
                                      style:
                                          CustomTextStyles.titleSmallSemiBold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 3.v),
                                Divider(
                                  indent: 10.h,
                                  endIndent: 10.h,
                                ),
                                SizedBox(height: 9.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 18.h,
                                    right: 25.h,
                                  ),
                                  child: _buildMore(
                                    context,
                                    images: "Watered:",
                                    more: "Water every morning",
                                  ),
                                ),
                                SizedBox(height: 31.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 18.h,
                                    right: 25.h,
                                  ),
                                  child: _buildLeavesCleaned(
                                    context,
                                    leavesCleaned: "Fertilized:",
                                    removeAffected:
                                        "Spray with a suitable rust control product",
                                  ),
                                ),
                                SizedBox(height: 14.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 18.h,
                                    right: 25.h,
                                  ),
                                  child: _buildLeavesCleaned(
                                    context,
                                    leavesCleaned: "Leaves cleaned:",
                                    removeAffected: "Remove affected leaves",
                                  ),
                                ),
                                SizedBox(height: 34.v),
                                Divider(
                                  indent: 10.h,
                                  endIndent: 10.h,
                                ),
                                SizedBox(height: 2.v),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 18.h,
                                    right: 25.h,
                                  ),
                                  child: _buildMore(
                                    context,
                                    images: "Images",
                                    more: "More",
                                  ),
                                ),
                                SizedBox(height: 1.v),
                                _buildFrameEighteen(context)
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
                              "Date:",
                              style: CustomTextStyles.bodyMediumBlack900,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 9.v,
                              right: 25.h,
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

  /// Section Widget
  Widget _buildThirtyTwo(BuildContext context) {
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
            leadingWidth: 40.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrow1,
              margin: EdgeInsets.only(
                left: 18.h,
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
  Widget _buildACTION(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 18.h,
        right: 25.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "ACTION",
            style: CustomTextStyles.bodyMedium_1,
          ),
          Spacer(
            flex: 56,
          ),
          GestureDetector(
            onTap: () {
              onTapTxtREQUIREMENTS(context);
            },
            child: Text(
              "REQUIREMENTS",
              style: CustomTextStyles.bodyMediumBlack900_1,
            ),
          ),
          Spacer(
            flex: 43,
          ),
          Text(
            "HISTORY",
            style: CustomTextStyles.bodyMediumBlack900_1,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameEighteen(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 75.v,
        child: ListView.separated(
            padding: EdgeInsets.only(
              left: 18.h,
              right: 87.h,
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 15.h,
              );
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return FrameeighteenItemWidget();
            }),
      ),
    );
  }

  /// Common widget
  Widget _buildLeavesCleaned(
    BuildContext context, {
    required String leavesCleaned,
    required String removeAffected,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leavesCleaned,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
          ),
        ),
        Text(
          removeAffected,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildMore(
    BuildContext context, {
    required String images,
    required String more,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            images,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            more,
            style: CustomTextStyles.bodyMediumBlack90013.copyWith(
              color: appTheme.black900.withOpacity(0.58),
            ),
          ),
        )
      ],
    );
  }

  /// Navigates to the frameNineteen TabContainerScreen when the action is triggered.
  onTapTxtREQUIREMENTS(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameNineteenTabContainerScreen);
  }
}
