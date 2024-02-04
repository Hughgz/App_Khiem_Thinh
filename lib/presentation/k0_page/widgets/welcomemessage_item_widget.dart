import '../controller/k0_controller.dart';
import '../models/welcomemessage_item_model.dart';
import 'package:app_kiem_thinh/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WelcomemessageItemWidget extends StatelessWidget {
  WelcomemessageItemWidget(
    this.welcomemessageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WelcomemessageItemModel welcomemessageItemModelObj;

  var controller = Get.find<K0Controller>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 25.h,
          vertical: 49.v,
        ),
        decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Text(
          "msg_welcome_to_sign".tr,
          style: theme.textTheme.titleMedium,
        ),
      ),
    );
  }
}
