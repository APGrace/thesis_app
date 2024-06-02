import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';
import 'package:thesisapp/presentation/frame_four_page/frame_four_page.dart';
import 'package:thesisapp/presentation/frame_fourteen_screen/frame_fourteen_screen.dart';
import 'package:thesisapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:thesisapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'package:thesisapp/widgets/custom_text_form_field.dart';

class FrameThirteenScreen extends StatefulWidget {
  FrameThirteenScreen({Key? key}) : super(key: key);

  @override
  State<FrameThirteenScreen> createState() => _FrameThirteenScreenState();
}

class _FrameThirteenScreenState extends State<FrameThirteenScreen> {
  TextEditingController ninetyThreeController = TextEditingController();
  TextEditingController eightySixController = TextEditingController();
  TextEditingController eightyFiveController = TextEditingController();
  TextEditingController eightyTwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 435.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32.h,
                    vertical: 40.v,
                  ),
                  decoration: AppDecoration.gradientGreenAFToGreenAF,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 83.v),
                      _buildButton(context, "Cultural Management",
                          FrameFourteenScreen()),
                      SizedBox(height: 30.v),
                      _buildButton(context, "Chemical Management",
                          FrameFourteenScreen()),
                      SizedBox(height: 35.v),
                      _buildButton(context, "Physical Management",
                          FrameFourteenScreen()),
                      SizedBox(height: 35.v),
                      _buildButton(context, "Biological Management",
                          FrameFourteenScreen()),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "Prevention and Management",
                    style: CustomTextStyles
                        .titleMediumInknutAntiquaOnSecondaryContainer,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 20.v),
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "Strategies",
                    style: CustomTextStyles
                        .titleMediumInknutAntiquaOnSecondaryContainer,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 39.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 17.h,
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
    );
  }

  Widget _buildButton(
      BuildContext context, String hintText, Widget destinationScreen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationScreen),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.v),
        decoration: BoxDecoration(
          color: appTheme.lightGreen5001,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            hintText,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
