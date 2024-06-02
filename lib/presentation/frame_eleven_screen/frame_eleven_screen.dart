import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:thesisapp/presentation/frame_four_page/frame_four_page.dart';
import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'package:thesisapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:thesisapp/widgets/app_bar/appbar_subtitle.dart';
import 'widgets/frameeleven_item_widget.dart';
import 'package:thesisapp/core/app_export.dart';

class FrameElevenScreen extends StatelessWidget {
  const FrameElevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          // Wrap the Column with SingleChildScrollView
          child: Column(
            children: [
              _buildArrowOne(context),
              SizedBox(height: 5.v),
              _buildFrameEleven(context), // Remove Expanded
            ],
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  Widget _buildArrowOne(BuildContext context) {
    return Container(
      height: 187.v,
      width: double.infinity,
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
              margin: EdgeInsets.only(bottom: 10.v),
              decoration: AppDecoration.outlineBlack,
              child: Text(
                "Types of Leaf Diseases",
                style: CustomTextStyles
                    .titleMediumInknutAntiquaOnSecondaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFrameEleven(BuildContext context) {
    final diseases = [
      {"name": "Anthracnose", "image": ImageConstant.img5030050Ppt1},
      {"name": "Powdery Mildew", "image": ImageConstant.img11},
      {
        "name": "Leaf Blights",
        "image": ImageConstant.imgReltgypsapm8engh6tpdm54158075x106
      },
      {"name": "Rusts", "image": ImageConstant.img58676233196f149e16fc074x105},
      {"name": "Black Spot", "image": ImageConstant.imgAppleFrogEye},
      {"name": "Downy Mildew", "image": ImageConstant.img517870230rig1},
      // Add more diseases as needed
    ];

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 136.v,
        crossAxisCount: 2,
        mainAxisSpacing: 30.h,
        crossAxisSpacing: 30.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true, // Add shrinkWrap property
      itemCount: diseases.length,
      itemBuilder: (context, index) {
        final disease = diseases[index];
        return FrameelevenItemWidget(
          diseaseName: disease['name']!,
          imagePath: disease['image']!,
        );
      },
    );
  }
}
