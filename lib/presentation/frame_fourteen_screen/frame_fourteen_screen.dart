// ignore: unused_import
import 'package:thesisapp/presentation/frame_four_page/frame_four_page.dart';
import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'package:thesisapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:thesisapp/widgets/app_bar/appbar_subtitle.dart';
// ignore: unused_import
import 'package:thesisapp/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

class FrameFourteenScreen extends StatefulWidget {
  FrameFourteenScreen({Key? key}) : super(key: key);

  @override
  State<FrameFourteenScreen> createState() => _FrameFourteenScreenState();
}

class _FrameFourteenScreenState extends State<FrameFourteenScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: SizedBox(
            height: 430.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.h,
                      vertical: 14.v,
                    ),
                    decoration: AppDecoration.gradientGreenAFToGreenAF,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 27.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Cultural Management",
                            style: CustomTextStyles
                                .titleMediumOnSecondaryContainer,
                          ),
                        ),
                        SizedBox(height: 20.v),
                        Container(
                          width: 309.h,
                          margin: EdgeInsets.only(
                            left: 2.h,
                            right: 18.h,
                          ),
                          child: Text(
                            "The term cultural control describes the activities of humans aimed at controlling disease through the cultural manipulation of plants. At present, cultural control practices find their greatest value in large area and low unit value crops such as temperate cereals and forests. For some crops, such control practices may be the only economically viable methods available.",
                            maxLines: 7,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.labelLargeKarlaBlack900,
                          ),
                        ),
                        SizedBox(height: 12.v),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "Cultural Management Practices:",
                            style: CustomTextStyles
                                .labelLargeInterOnSecondaryContainer,
                          ),
                        ),
                        SizedBox(height: 12.v),
                        Container(
                          width: 321.h,
                          margin: EdgeInsets.only(left: 8.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Sanitation",
                                  style:
                                      CustomTextStyles.labelLargeKarlaff000000,
                                ),
                                TextSpan(
                                  text:
                                      " - clean environment; remove or reduce sources of inoculum (weed and alternative hosts, insect vectors, debris).\n",
                                  style: CustomTextStyles
                                      .labelLargeKarlaff000000_1,
                                ),
                                TextSpan(
                                  text: "Pruning",
                                  style:
                                      CustomTextStyles.labelLargeKarlaff000000,
                                ),
                                TextSpan(
                                  text:
                                      "- remove infected tissue, promote more vigorous growth, increase air circulation \n",
                                  style: CustomTextStyles
                                      .labelLargeKarlaff000000_1,
                                ),
                                TextSpan(
                                  text: "Watering",
                                  style:
                                      CustomTextStyles.labelLargeKarlaff000000,
                                ),
                                TextSpan(
                                  text:
                                      "- avoid overwatering or underwatering; flooding soils. \n",
                                  style: CustomTextStyles
                                      .labelLargeKarlaff000000_1,
                                ),
                                TextSpan(
                                  text: "Strip farming",
                                  style:
                                      CustomTextStyles.labelLargeKarlaff000000,
                                ),
                                TextSpan(
                                  text:
                                      "this practice separates areas of one crop with intervening strips of another crop or fallow. Part of the rationale for adopting strip farming practices is that crops in adjacent strips rarely share common pathogens. The rates of spread of more specialised parasites are also restricted because of the discontinuous distribution of suitable hosts. The major problems associated with strip farming are increased costs of production relative to monocultures, selection of crops for adjacent strips which have few common parasites and weed control between the strips. Strip farming has an additional role in reducing soil erosion.",
                                  style: CustomTextStyles
                                      .labelLargeKarlaff000000_1,
                                ),
                                TextSpan(
                                  text: "Planting date",
                                  style:
                                      CustomTextStyles.labelLargeKarlaff000000,
                                ),
                                TextSpan(
                                  text:
                                      "- unfavorable conditions for pathogen, favorable for host. \n",
                                  style: CustomTextStyles
                                      .labelLargeKarlaff000000_1,
                                ),
                                TextSpan(
                                  text: "Fertility",
                                  style:
                                      CustomTextStyles.labelLargeKarlaff000000,
                                ),
                                TextSpan(
                                  text:
                                      "- avoid overfertilization or underfertilization. \n",
                                  style: CustomTextStyles
                                      .labelLargeKarlaff000000_1,
                                ),
                                TextSpan(
                                  text: "Rotation",
                                  style:
                                      CustomTextStyles.labelLargeKarlaff000000,
                                ),
                                TextSpan(
                                  text:
                                      "- The successive planting of different crops in the same area, is one of the oldest and most widespread cultural practices. It may also include a fallow period in which land is 'rested' from cultivation. Crop rotation improves soil fertility, moisture and texture and assists in weed and pathogen control. The most successful rotations employ intervals between susceptible crops which are longer than the known survival period of pathogens. Rotations are most likely to be effective in controlling pathogens such as GaeumannomAces graminis, Pgrenophoratritici-repentis, various CoLLetotri-chumand Phoma spp. and some pathogenic bacteria which only survive in the presence of a specific host (or its residues) or as resistant propagules.",
                                  style: CustomTextStyles
                                      .labelLargeKarlaff000000_1,
                                ),
                                TextSpan(
                                  text: "Roguing",
                                  style:
                                      CustomTextStyles.labelLargeKarlaff000000,
                                ),
                                TextSpan(
                                  text:
                                      "-involves the removal (and destruction) of diseased plants (rogues) to prevent further spread of the pathogen(s). It is practicable in small gardens, where labour is cheap or the cost of labour is not imporlant, when a crop is very valuable or if the level of infection is low. With larger plantings, roguing is only worthwhile if the crop has a relatively high economic value, the disease symptoms are conspicuous and the pathogen has a limited dispersal potential. To minimise disease spread, affected plants need to be removed as soon as possible after symptoms are observed. Roguing may need to be repeated regularly as newly diseased plants appear.",
                                  style: CustomTextStyles
                                      .labelLargeKarlaff000000_1,
                                ),
                                TextSpan(
                                  text:
                                      "Quarantines, restrictions on moving plant materials across county, state, or national borders.",
                                  style:
                                      CustomTextStyles.labelLargeKarlaff000000,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        //bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 39.h,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: AppbarLeadingImage(
          imagePath: ImageConstant.imgArrow1,
          margin: EdgeInsets.only(
            left: 17.h,
            top: 21.v,
            bottom: 133.v,
          ),
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
}
