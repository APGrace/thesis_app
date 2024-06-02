import 'package:thesisapp/presentation/frame_four_page/frame_four_page.dart';
import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'package:thesisapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:thesisapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:readmore/readmore.dart';
import 'widgets/frametwelve_item_widget.dart';
import 'package:thesisapp/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

class FrameTwelveScreen extends StatefulWidget {
  FrameTwelveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<FrameTwelveScreen> createState() => _FrameTwelveScreenState();
}

class _FrameTwelveScreenState extends State<FrameTwelveScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildArrowOne(context),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  _buildPPTTwo(context),
                  SizedBox(height: 13.v),
                  _buildManagementofPostHarv(context),
                ],
              ),
            ],
          ),
        ),
        //bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowOne(BuildContext context) {
    return SizedBox(
      height: 187.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img16654623031851146x360,
            height: 146.v,
            width: 360.h,
            alignment: Alignment.topCenter,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context); // Navigate back to the previous screen
            },
            child: CustomAppBar(
              leadingWidth: 36.h,
              leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgArrow1,
                margin: EdgeInsets.only(
                  left: 14.h,
                  top: 21.v,
                  bottom: 133.v,
                ),
              ),
              title: AppbarSubtitle(
                text: "Back",
                margin: EdgeInsets.only(
                  left: 10.h,
                  top: 11.v,
                  bottom: 125.v,
                ),
              ),
              styleType: Style.bgGradientnamegreenA100f9namegreenA100f9,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: AppDecoration.outlineBlack,
              child: Text(
                "What is Anthracnose?",
                style: CustomTextStyles.titleSmallInknutAntiqua_1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPPTTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img5030050Ppt1,
            height: 95.v,
            width: 106.h,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 20.v,
            ),
          ),
          Container(
            width: 224.h,
            margin: EdgeInsets.only(left: 6.h),
            child: ReadMoreText(
              "Anthracnose disease is induced by the fungus Colletotrichum lagenarium, and the characteristic symptoms include small, yellowish watery spots that enlarge rapidly to become brownish. Oblong lesions then develop on the stems often resulting in death of plants.",
              trimLines: 7,
              colorClickableText: appTheme.lightGreen900,
              trimMode: TrimMode.Line,
              trimCollapsedText: "READ MORE",
              moreStyle: CustomTextStyles.labelLargeKarlaBlack900,
              lessStyle: CustomTextStyles.labelLargeKarlaBlack900,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildManagementofPostHarv(BuildContext context) {
    return SizedBox(
      height: 282.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: 12.v),
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 17.v,
              ),
              decoration: AppDecoration.gradientGreenAFToGreenAF,
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 14.v,
                  );
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return FrametwelveItemWidget();
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: AppDecoration.outlineBlack,
              child: Text(
                "Related Articles",
                style: CustomTextStyles.titleSmallInknutAntiqua_1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
