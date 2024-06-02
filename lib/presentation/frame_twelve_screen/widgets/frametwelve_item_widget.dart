import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';
import 'package:url_launcher/url_launcher.dart';

class FrametwelveItemWidget extends StatelessWidget {
  const FrametwelveItemWidget({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLogoPlants1,
                    height: 41.v,
                    width: 95.h,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 2.v,
                    ),
                  ),
                  Container(
                    width: 211.h,
                    margin: EdgeInsets.only(left: 9.h),
                    child: InkWell(
                      onTap: () => _launchURL(
                          "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9319655/"),
                      child: Text(
                        "Management of Post-Harvest Anthracnose: Current Approaches and Future Perspectives",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargeBlack900.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLogoJfungi1,
                    height: 41.v,
                    width: 95.h,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 2.v,
                    ),
                  ),
                  Container(
                    width: 211.h,
                    margin: EdgeInsets.only(left: 9.h),
                    child: InkWell(
                      onTap: () =>
                          _launchURL("https://www.mdpi.com/2309-608X/9/6/623"),
                      child: Text(
                        "Green Management of Postharvest Anthracnose Caused by Colletotrichum gloeosporioides",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargeBlack900.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgAnthracnoseMaple285x252,
                    height: 41.v,
                    width: 95.h,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 2.v,
                    ),
                  ),
                  Container(
                    width: 211.h,
                    margin: EdgeInsets.only(left: 9.h),
                    child: InkWell(
                      onTap: () => _launchURL(
                          "https://hort.extension.wisc.edu/articles/anthracnose/#:~:text=Anthracnose%20is%20the%20name%20of,typically%20affects%20young%20leaf%20tissue."),
                      child: Text(
                        "Anthracnose-Wisconsin Horticulture",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargeBlack900.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgDownload1,
                    height: 41.v,
                    width: 95.h,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 2.v,
                    ),
                  ),
                  Container(
                    width: 211.h,
                    margin: EdgeInsets.only(left: 9.h),
                    child: InkWell(
                      onTap: () => _launchURL(
                          "https://www.frontiersin.org/journals/microbiology/articles/10.3389/fmicb.2023.1168203/full"),
                      child: Text(
                        "Mango anthracnose disease: the current situation and direction for future research",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargeBlack900.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
