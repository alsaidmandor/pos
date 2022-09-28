import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/button.dart';
import '../widgets/widget_buildPinCodeField.dart';
import '../widgets/widget_intro_otp_text.dart';

class OtpVerificationPage extends StatelessWidget {
  OtpVerificationPage({
    Key? key,
  }) : super(key: key);

  late String otpCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: responsiveValue(context, 30),
            vertical: responsiveValue(context, 30)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const BuiltIntroOtpText(),
              space24Vertical(context),
              BuildPinCodeField(submittedCodeFunction: (code) {}),
              space30Vertical(context),
              MainButton(
                text: 'Verify',
                isCapitalize: true,
                onClick: () {
                  Navigator.pushNamed(context, Routes.userInfoRoutes);
                },
                textColor: Colors.white,
                buttonColor: AppColors.secondaryLight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
