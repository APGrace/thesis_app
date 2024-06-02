import 'widgets/price_item_widget.dart';
import 'widgets/fefco_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:thesisapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FrameTwentyPage extends StatefulWidget {
  const FrameTwentyPage({Key? key})
      : super(
          key: key,
        );

  @override
  FrameTwentyPageState createState() => FrameTwentyPageState();
}

class FrameTwentyPageState extends State<FrameTwentyPage>
    with AutomaticKeepAliveClientMixin<FrameTwentyPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 3.v),
                _buildPrice(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0.v),
                child: SizedBox(
                  width: 340.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.green700.withOpacity(0.31),
                  ),
                ),
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return PriceItemWidget();
            },
          ),
          SizedBox(height: 2.v),
          Padding(
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
          SizedBox(height: 2.v),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
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
                  return FefcoItemWidget();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
