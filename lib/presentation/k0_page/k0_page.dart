import '../k0_page/widgets/welcomemessage_item_widget.dart';
import 'controller/k0_controller.dart';
import 'models/k0_model.dart';
import 'models/welcomemessage_item_model.dart';
import 'package:app_kiem_thinh/core/app_export.dart';
import 'package:app_kiem_thinh/widgets/app_bar/appbar_title.dart';
import 'package:app_kiem_thinh/widgets/app_bar/appbar_trailing_image.dart';
import 'package:app_kiem_thinh/widgets/app_bar/custom_app_bar.dart';
import 'package:app_kiem_thinh/widgets/custom_elevated_button.dart';
import 'package:app_kiem_thinh/widgets/custom_outlined_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class K0Page extends StatelessWidget {
  K0Page({Key? key})
      : super(
          key: key,
        );

  K0Controller controller = Get.put(K0Controller(K0Model().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(12.h),
          child: Column(
            children: [
              _buildWelcomeMessageSlider(),
              SizedBox(height: 12.v),
              CustomOutlinedButton(
                text: "lbl_settings".tr,
              ),
              SizedBox(height: 8.v),
              CustomElevatedButton(
                text: "msg_start_recognition".tr,
              ),
              SizedBox(height: 12.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 84.h,
                  vertical: 169.v,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Text(
                  "msg_sign_language_gesture".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitle(
        text: "msg_sign_language_recognition".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIcon,
          margin: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 14.v,
          ),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildWelcomeMessageSlider() {
    return SizedBox(
      height: 120.v,
      width: 336.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Obx(
            () => CarouselSlider.builder(
              options: CarouselOptions(
                height: 120.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (
                  index,
                  reason,
                ) {
                  controller.sliderIndex.value = index;
                },
              ),
              itemCount: controller
                  .k0ModelObj.value.welcomemessageItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                WelcomemessageItemModel model = controller
                    .k0ModelObj.value.welcomemessageItemList.value[index];
                return WelcomemessageItemWidget(
                  model,
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Obx(
              () => Container(
                height: 4.v,
                margin: EdgeInsets.only(bottom: 8.v),
                child: AnimatedSmoothIndicator(
                  activeIndex: controller.sliderIndex.value,
                  count: controller
                      .k0ModelObj.value.welcomemessageItemList.value.length,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 4,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: theme.colorScheme.onPrimaryContainer,
                    dotHeight: 4.v,
                    dotWidth: 4.h,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
