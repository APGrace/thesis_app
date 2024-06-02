import 'widgets/framenineteen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FrameNineteenPage extends StatefulWidget {
  const FrameNineteenPage({Key? key})
      : super(
          key: key,
        );

  @override
  FrameNineteenPageState createState() => FrameNineteenPageState();
}

class FrameNineteenPageState extends State<FrameNineteenPage>
    with AutomaticKeepAliveClientMixin<FrameNineteenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context); // Call the overridden method
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 8.v),
                _buildWater(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWater(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "Water",
              style: CustomTextStyles.titleSmallBlack900,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 314.h,
              margin: EdgeInsets.only(
                left: 8.h,
                right: 18.h,
              ),
              child: Text(
                "The best time to water is in the morning, watering into the soil (not onto the plants) as this will help prevent the spread of the spores.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(height: 3.v),
          Divider(),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "Fertilize",
              style: CustomTextStyles.titleSmallBlack900,
            ),
          ),
          Container(
            width: 297.h,
            margin: EdgeInsets.only(
              left: 8.h,
              right: 35.h,
            ),
            child: Text(
              "Avoid spraying when rain is expected or when plants are dry and suffering from moisture stress.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Divider(),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "Leaves clean",
              style: CustomTextStyles.titleSmallBlack900,
            ),
          ),
          Container(
            width: 305.h,
            margin: EdgeInsets.only(
              left: 7.h,
              right: 28.h,
            ),
            child: Text(
              "Remove all infected plant material from the plant and the ground and dispose of in the rubbish.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 25.v),
          Divider(),
          SizedBox(height: 2.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                right: 15.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      "Images",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  Text(
                    "More",
                    style: CustomTextStyles.bodyMediumBlack90013,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 2.v),
          SizedBox(
            height: 75.v,
            child: ListView.separated(
              padding: EdgeInsets.only(
                left: 8.h,
                right: 77.h,
              ),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 15.h,
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return FramenineteenItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
