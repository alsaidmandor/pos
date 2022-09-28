import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets_name.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/button.dart';
import '../../../../core/widgets/image_manage.dart';
import '../widgets/widget_from.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final phoneController = TextEditingController();
  String phoneNumber = '+20';

  final GlobalKey<FormState> _phoneFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: responsiveValue(context, 20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'POS',
                          style: textTheme(context)
                              .titleLarge
                              ?.copyWith(fontSize: 25),
                        ),
                        ManagePhotos(imgPath: ImgAssets.pos_1),
                        space30Vertical(context),
                        Text(
                          'Easily manage your sales  , income and products',
                          textAlign: TextAlign.start,
                          style: textTheme(context)
                              .bodyMedium!
                              .copyWith(fontSize: 19),
                        ),
                        space16Vertical(context),
                        TextFromWidget(
                            phoneController: phoneController,
                            phoneNumber: (value) {
                              phoneNumber = value;
                            }),
                        space20Vertical(context),
                        MainButton(
                          text: 'Continue',
                          isCapitalize: true,
                          onClick: () {
                            print(
                                phoneNumber + phoneController.text.toString());
                            Navigator.pushNamed(context, Routes.otpPageRoutes);
                          },
                          textColor: Colors.white,
                          buttonColor: AppColors.secondaryLight,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
