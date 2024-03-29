import 'controller/personality_controller.dart';
import 'package:flutter/material.dart';
import 'package:tanvir_s_application1/core/app_export.dart';
import 'package:tanvir_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:tanvir_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:tanvir_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:tanvir_s_application1/widgets/custom_elevated_button.dart';
import 'package:tanvir_s_application1/widgets/custom_text_form_field.dart';

class PersonalityScreen extends GetWidget<PersonalityController> {
  const PersonalityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 19.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 32.h, right: 32.h, bottom: 5.v),
                        child: Column(children: [
                          _buildEditProfilePic(),
                          SizedBox(height: 50.v),
                          _buildUserName(),
                          SizedBox(height: 18.v),
                          _buildFirstName(),
                          SizedBox(height: 18.v),
                          _buildLastName(),
                          SizedBox(height: 20.v),
                          _buildHobby(),
                          SizedBox(height: 18.v),
                          _buildDateOfBirth(),
                          SizedBox(height: 20.v),
                          _buildCountry(),
                          SizedBox(height: 34.v),
                          CustomElevatedButton(
                              text: "lbl_change_save".tr,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumWhiteA700,
                              onPressed: () {
                                onTapChangeSave();
                              })
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 32.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft();
            }),
        actions: [
          AppbarTitle(
              text: "lbl_personality".tr,
              margin: EdgeInsets.symmetric(horizontal: 32.h, vertical: 14.v))
        ]);
  }

  /// Section Widget
  Widget _buildEditProfilePic() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 86.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgProfileImage,
              height: 139.adaptSize,
              width: 139.adaptSize,
              radius: BorderRadius.circular(69.h)),
          SizedBox(height: 18.v),
          Opacity(
              opacity: 0.8,
              child: Padding(
                  padding: EdgeInsets.only(left: 35.h),
                  child: Text("lbl_edit_photo".tr,
                      style: CustomTextStyles.labelLargeSecondaryContainer_1)))
        ]));
  }

  /// Section Widget
  Widget _buildUserName() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_username".tr, style: theme.textTheme.labelLarge),
      SizedBox(height: 13.v),
      CustomTextFormField(
          controller: controller.userNameController,
          hintText: "lbl_adalahalcana".tr,
          hintStyle: CustomTextStyles.titleSmallOnPrimary_1)
    ]);
  }

  /// Section Widget
  Widget _buildFirstName() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_first_name2".tr, style: theme.textTheme.labelLarge),
      SizedBox(height: 13.v),
      CustomTextFormField(
          controller: controller.firstNameController,
          hintText: "lbl_alcanasatre".tr,
          hintStyle: CustomTextStyles.titleSmallOnPrimary_1)
    ]);
  }

  /// Section Widget
  Widget _buildLastName() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_last_name2".tr, style: theme.textTheme.labelLarge),
      SizedBox(height: 13.v),
      CustomTextFormField(
          controller: controller.lastNameController,
          hintText: "lbl_fourta".tr,
          hintStyle: CustomTextStyles.titleSmallOnPrimary_1)
    ]);
  }

  /// Section Widget
  Widget _buildHobby() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_hobby".tr, style: theme.textTheme.labelLarge),
      SizedBox(height: 11.v),
      CustomTextFormField(
          controller: controller.hobbyController,
          hintText: "lbl_sleep".tr,
          hintStyle: CustomTextStyles.titleSmallOnPrimary_1)
    ]);
  }

  /// Section Widget
  Widget _buildDateOfBirth() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_date_of_birth".tr, style: theme.textTheme.labelLarge),
      SizedBox(height: 13.v),
      CustomTextFormField(
          controller: controller.dateOfBirthController,
          hintText: "lbl_28_may_2002".tr,
          hintStyle: CustomTextStyles.titleSmallOnPrimary_1)
    ]);
  }

  /// Section Widget
  Widget _buildCountry() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_country".tr, style: theme.textTheme.labelLarge),
      SizedBox(height: 11.v),
      CustomTextFormField(
          controller: controller.countryController,
          hintText: "lbl_indonesian".tr,
          hintStyle: CustomTextStyles.titleSmallOnPrimary_1,
          textInputAction: TextInputAction.done)
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapChangeSave() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}
