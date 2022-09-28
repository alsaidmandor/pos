import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/utils/app_colors.dart';

class BuildPinCodeField extends StatelessWidget {
  final Function submittedCodeFunction;
  const BuildPinCodeField({Key? key, required this.submittedCodeFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      autoFocus: true,
      cursorColor: Colors.black,
      keyboardType: TextInputType.number,
      length: 6,
      obscureText: false,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        borderWidth: 1,
        activeColor: AppColors.mainColor,
        inactiveColor: AppColors.mainColor,
        inactiveFillColor: AppColors.onSurfaceLight,
        activeFillColor: AppColors.mainColor,
        selectedColor: AppColors.mainColor,
        selectedFillColor: Colors.white,
      ),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      onCompleted: (submittedCode) {
        submittedCodeFunction(submittedCode);
      },
      onChanged: (value) {
        print(value);
      },
    );
  }
}
