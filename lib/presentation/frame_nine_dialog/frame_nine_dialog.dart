import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FrameNineDialog extends StatelessWidget {
  const FrameNineDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 337.h,
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 19.v,
          ),
          decoration: AppDecoration.fillSecondaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Material(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Learn more about Leaf Spot!",
                  style: CustomTextStyles.titleMediumOnSecondaryContainer,
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  width: 319.h,
                  child: ReadMoreText(
                    "Leaf spot diseases weaken trees and shrubs by interrupting photosynthesis.\nMost leaf spot diseases affect only a small percentage of the tree's overall leaf area, and are a minor stress on the health of the tree.\nLeaf spot diseases should be taken seriously if they result in moderate to complete leaf loss two to four years in a row.\nLeaf loss during several consecutive growing seasons can result in reduced growth and increased susceptibility to pests and other diseases.",
                    trimLines: 13,
                    colorClickableText: appTheme.lightGreen900,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "READ MORE",
                    moreStyle: CustomTextStyles.labelLargeInterBlack900,
                    lessStyle: CustomTextStyles.labelLargeInterBlack900,
                  ),
                ),
                SizedBox(height: 2.v),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
