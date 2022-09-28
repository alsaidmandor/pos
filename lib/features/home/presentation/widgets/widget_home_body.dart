import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/constants.dart';

class HomeBody extends StatelessWidget {
  final double height;

  final double width;

  final bool isScreenView;

  final IconData icon;

  final String txt;

  final Color backgroundIcon;
  final Color iconColor;

  final Color color;
  final Function onTap;

  const HomeBody(
      {Key? key,
      required this.height,
      required this.width,
      required this.icon,
      required this.txt,
      required this.backgroundIcon,
      required this.color,
      required this.isScreenView,
      required this.iconColor,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.onSurfaceLight,
      onTap: () {
        onTap();
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15.0)),
        child: Center(
          child: isScreenView
              ? _buildRowContent(
                  color: backgroundIcon,
                  icon: icon,
                  text: txt,
                  iconColor: iconColor,
                  context: context)
              : _buildColumnContent(
                  color: backgroundIcon,
                  icon: icon,
                  text: txt,
                  context: context,
                  iconColor: iconColor),
        ),
      ),
    );
  }
}

Widget _buildRowContent(
    {required Color color,
    required IconData icon,
    required String text,
    required BuildContext context,
    required Color iconColor}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: EdgeInsets.symmetric(
          vertical: responsiveValue(context, 8),
        ),
        child: Container(
          width: responsiveValue(context, 60.0),
          height: responsiveValue(context, 60.0),
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Icon(icon, color: iconColor),
        ),
      ),
      space5Horizontal(context),
      Text(text),
    ],
  );
}

Widget _buildColumnContent(
    {required Color color,
    required IconData icon,
    required String text,
    required BuildContext context,
    required Color iconColor}) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: responsiveValue(context, 60.0),
          height: responsiveValue(context, 60.0),
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Icon(icon, color: iconColor),
        ),
        space8Vertical(context),
        Text(text),
      ],
    ),
  );
}
