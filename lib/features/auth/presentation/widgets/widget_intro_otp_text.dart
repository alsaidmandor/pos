import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets_name.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/image_manage.dart';

class BuiltIntroOtpText extends StatelessWidget {
  const BuiltIntroOtpText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Verification',
          style: textTheme(context).titleLarge!.copyWith(fontSize: 25),
        ),
        space20Vertical(context),
        ManagePhotos(
          imgPath: ImgAssets.pos_2,
          height: 150,
        ),
        space20Vertical(context),
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: responsiveValue(context, 2),
              vertical: responsiveValue(context, 5)),
          child: RichText(
            text: TextSpan(
              text: 'Enter your 6 digit code numbers sent to ',
              style: textTheme(context).bodyLarge,
              children: <TextSpan>[
                TextSpan(
                  text: '0111111111111',
                  style: textTheme(context)
                      .bodyMedium!
                      .copyWith(color: AppColors.orangeColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
