import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FrameEightDialog extends StatelessWidget {
  const FrameEightDialog({Key? key})
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
            vertical: 18.v,
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
                  "Leaf Spot Solution",
                  style: CustomTextStyles.titleMediumOnSecondaryContainer,
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 319.h,
                  child: ReadMoreText(
                    "Rake up and destroy fallen leaves before the first snowfall to eliminate locations where diseases can survive to re-infect the plant the following growing season.\nDo not overcrowd plants - use size at maturity as a spacing guide when planting.\nPrune trees or shrubs to increase light penetration and improve air circulation throughout the canopy.\nWet conditions promote disease, so water tress at the base and be craeful not to splash water on leaves. A drip or soaker hose works best for this. Avoid spring sprinklers.",
                    trimLines: 13,
                    colorClickableText: appTheme.lightGreen900,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "READ MORE",
                    moreStyle: CustomTextStyles.labelLargeInterBlack900,
                    lessStyle: CustomTextStyles.labelLargeInterBlack900,
                  ),
                ),
                SizedBox(height: 4.v),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
