import 'package:thesisapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart'; // ignore_for_file: must_be_immutable

class FrameTwentytwoDialog extends StatelessWidget {
  const FrameTwentytwoDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          child: GestureDetector(
            child: Container(
              width: 301.h,
              decoration: AppDecoration.fillLightgreen5001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 17.v),
                  Text(
                    "Hey Wait!",
                    style: CustomTextStyles.titleLargeInterBlack900,
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: 205.h,
                    child: Text(
                      "Do you like to add this photo to your leaf collection?",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleSmallInterBlack900,
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomElevatedButton(
                        height: 40.v,
                        width: 151.h,
                        text: "CANCEL",
                        buttonStyle: CustomButtonStyles.fillGray,
                        buttonTextStyle: CustomTextStyles.titleMediumBlack900,
                      ),
                      CustomElevatedButton(
                        height: 40.v,
                        width: 150.h,
                        text: "CONFIRM",
                        buttonStyle: CustomButtonStyles.fillPrimaryBR10,
                        buttonTextStyle: CustomTextStyles.titleMediumBlack,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
