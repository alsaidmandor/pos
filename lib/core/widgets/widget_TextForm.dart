import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/constants.dart';

class WidgetTextForm extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? type;
  final Function onSubmit;
  final Function validate;
  final Function onTap;
  final String label;
  final bool isSuffixIcon;
  final bool hideCursor;

  const WidgetTextForm({
    Key? key,
    required this.controller,
    required this.type,
    required this.onSubmit,
    required this.validate,
    required this.label,
    required this.onTap,
    this.isSuffixIcon = false,
    this.hideCursor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        keyboardType: type,
        onFieldSubmitted: (value) {
          onSubmit(value);
        },
        validator: (value) {
          validate(value);
        },
        onTap: () {
          onTap();
        },
        cursorHeight: hideCursor ? 0 : null,
        cursorWidth: hideCursor ? 0 : 2.0,
        style: textTheme(context).displayLarge,
        decoration: InputDecoration(
          labelText: label,
          suffixIcon: isSuffixIcon ? const Icon(Icons.arrow_drop_down) : null,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          border: const OutlineInputBorder(),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.secondaryLight),
          ),
        ));
  }
}
