import 'package:flutter/material.dart';
import 'package:pos/core/utils/app_colors.dart';
import 'package:pos/core/widgets/widget_circle_avatar.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/assets_name.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/button.dart';
import '../../../../core/widgets/widget_TextForm.dart';

class UserInformationPage extends StatelessWidget {
  UserInformationPage({Key? key}) : super(key: key);

  final nameController = TextEditingController();
  final businessNameController = TextEditingController();

  final GlobalKey<FormState> _FormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: responsiveValue(context, 20)),
        child: Form(
          key: _FormKey,
          child: Column(
            children: [
              space50Vertical(context),
              _buildIntro(context),
              space16Vertical(context),
              WidgetTextForm(
                  type: TextInputType.name,
                  controller: nameController,
                  label: 'name',
                  onTap: () {},
                  onSubmit: (value) {},
                  validate: (value) {}),
              space16Vertical(context),
              WidgetTextForm(
                type: TextInputType.name,
                controller: nameController,
                label: 'business name',
                onSubmit: (value) {},
                validate: (value) {},
                onTap: () {},
              ),
              space40Vertical(context),
              MainButton(
                text: 'Save and Continue',
                onClick: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Routes.homeRoutes, (route) => false);
                },
                buttonColor: AppColors.secondaryLight,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildIntro(BuildContext context) {
  return Row(
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Account Info',
              style: textTheme(context).bodyLarge!.copyWith(fontSize: 23)),
          Text('+2001117898475', style: textTheme(context).displaySmall)
        ],
      ),
      const Spacer(),
      WidgetCircleAvatar(
          radius: 25.0,
          color: AppColors.mainColor,
          widget: AssetImage(ImgAssets.profile))
    ],
  );
}
