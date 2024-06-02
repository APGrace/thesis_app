import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';
import 'package:thesisapp/presentation/frame_four_page/frame_four_page.dart';
import 'package:thesisapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:thesisapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:thesisapp/widgets/app_bar/custom_app_bar.dart';
import 'package:thesisapp/widgets/custom_bottom_bar.dart';

class FrameSixteenScreen extends StatefulWidget {
  FrameSixteenScreen({Key? key}) : super(key: key);

  @override
  State<FrameSixteenScreen> createState() => _FrameSixteenScreenState();
}

class _FrameSixteenScreenState extends State<FrameSixteenScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildArrowOne(context),
                SizedBox(
                  height: 406.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle21,
                        height: 266.v,
                        width: 360.h,
                        alignment: Alignment.bottomCenter,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 296.h,
                          child: Text(
                            "1. Climate Conditions: Extreme temperatures, fluctuations in humidity levels, and prolonged periods of rainfall or drought can create favorable conditions for the proliferation of fungal, bacterial, and viral pathogens that cause leaf diseases.\n\n"
                            "2. Moisture and Water Availability: Excessive moisture on leaves, either from rainfall, irrigation, or high humidity, can promote the growth of pathogens and create a conducive environment for disease development. Poor drainage and waterlogged soil can also contribute to fungal infections.\n\n"
                            "3. Air Pollution: Pollutants such as sulfur dioxide, ozone, and nitrogen oxides can weaken tree immune systems and increase susceptibility to diseases. Additionally, air pollution can create stress on trees, making them more vulnerable to pathogens.\n\n"
                            "4. Soil Conditions: Soilborne pathogens and nutrient deficiencies can affect tree health and contribute to the development of leaf diseases. Compacted or poorly aerated soil, as well as imbalances in soil pH and nutrient levels, can weaken trees and make them more susceptible to infections.\n\n"
                            "5. Invasive Species: Invasive pests and pathogens, introduced through international trade or human activities, can rapidly spread and cause significant damage to tree populations. These organisms often lack natural predators and can devastate native vegetation.\n\n"
                            "6. Urbanization and Land Use Changes: Urbanization, deforestation, and changes in land use can disrupt natural ecosystems, leading to increased stress on trees and higher incidences of leaf diseases. Fragmentation of habitats can also facilitate the spread of pathogens between tree species.\n\n"
                            "7. Cultural Practices: Improper planting techniques, overuse of fertilizers or pesticides, and inadequate pruning can weaken trees and compromise their ability to resist diseases. Poor maintenance practices can create entry points for pathogens and exacerbate the spread of infections.\n\n"
                            "8. Host Susceptibility: Certain tree species or cultivars may be inherently more susceptible to specific leaf diseases due to genetic factors. Planting diverse species and selecting disease-resistant cultivars can help reduce the impact of pathogens on tree populations.\n\n"
                            "Understanding and managing these environmental factors is essential for effective disease prevention and control strategies in tree populations. Implementing practices that promote tree vigor, enhance resilience, and minimize stress can help mitigate the risk of leaf diseases and ensure the long-term health of forested landscapes.",
                            maxLines: 22,
                            overflow: TextOverflow.ellipsis,
                            style:
                                CustomTextStyles.titleSmallKoHoPrimaryContainer,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
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
          CustomAppBar(
            leadingWidth: 40.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrow1,
              margin: EdgeInsets.only(
                left: 18.h,
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: AppDecoration.outlineBlack,
              child: Text(
                "Environmental Factors",
                style: CustomTextStyles
                    .titleMediumInknutAntiquaOnSecondaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
