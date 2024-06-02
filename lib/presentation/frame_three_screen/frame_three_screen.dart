import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

class FrameThreeScreen extends StatelessWidget {
  const FrameThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img1665462303185R451x360,
                    height: 451.v,
                    width: 360.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 17.h,
                        vertical: 82.v,
                      ),
                      decoration: AppDecoration.fillGreenAF,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 105.v,
                            width: 206.h,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgFreeLeavesIcon1571Thumb,
                                  height: 43.v,
                                  width: 45.h,
                                  alignment: Alignment.topCenter,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    decoration: AppDecoration.outlineBlack,
                                    child: Text(
                                      "Hello Elias!",
                                      style: CustomTextStyles
                                          .headlineLargeOnPrimaryContainer,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 13.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle10,
                            height: 130.adaptSize,
                            width: 130.adaptSize,
                            radius: BorderRadius.circular(
                              20.h,
                            ),
                          ),
                          SizedBox(height: 13.v),
                          SizedBox(
                            height: 37.v,
                            width: 195.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    height: 35.v,
                                    width: 195.h,
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1),
                                      borderRadius: BorderRadius.circular(
                                        17.h,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: 173.h,
                                    child: Text(
                                      "Change profile picture",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodyMediumInknutAntiquaOnPrimaryContainer,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 79.v),
                          _buildView(context),
                          SizedBox(height: 1.v),
                          GestureDetector(
                            onTap: () {
                              onTapTxtSkip(context);
                            },
                            child: Text(
                              "Skip",
                              style: CustomTextStyles.bodyLargeGreen800b2,
                            ),
                          )
                        ],
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
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 48.v,
      width: 322.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 48.v,
              width: 322.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withOpacity(1),
                borderRadius: BorderRadius.circular(
                  24.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Upload picture",
              style: CustomTextStyles.bodyLargeOnPrimaryContainer,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the frame FourContainerScreen when the action is triggered.
  onTapTxtSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameFourContainerScreen);
  }
}
