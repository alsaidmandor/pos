import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets_name.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/widget_circle_avatar.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: const EdgeInsets.all(0.0), children: <Widget>[
        _buildDrawerHeader(context),
        _buildMenuItem(
            context: context,
            txt: 'All Sale',
            icon: Icons.receipt,
            onTap: () {
              Navigator.pop(context);
            }),
        _buildMenuItem(
          context: context,
          txt: 'Naw Sale',
          icon: Icons.shopping_basket,
          onTap: () {
            Navigator.pop(context);
          },
        ),
        _buildMenuItem(
            context: context,
            txt: 'Add Product',
            icon: Icons.add,
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, Routes.productRoutes);
            }),
        _buildMenuItem(
            context: context,
            txt: 'All Sale',
            icon: Icons.receipt,
            onTap: () {
              Navigator.pop(context);
            }),
        _buildMenuItem(
            context: context,
            txt: 'Statistics',
            icon: Icons.bar_chart,
            onTap: () {
              Navigator.pop(context);
            }),
        _buildMenuItem(
            context: context,
            txt: 'Customers',
            icon: Icons.groups,
            onTap: () {
              Navigator.pop(context);
            }),
        _buildMenuItem(
            context: context,
            txt: 'Categories',
            icon: Icons.category,
            onTap: () {
              Navigator.pop(context);
            }),
        _buildMenuItem(
            context: context,
            txt: 'Settings',
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
            }),
        Divider(),
        _buildMenuItem(
            context: context,
            txt: 'Support',
            icon: Icons.contact_support_outlined,
            onTap: () {
              Navigator.pop(context);
            }),
      ]),
    );
  }
}

Widget _buildDrawerHeader(BuildContext context) {
  return DrawerHeader(
    decoration: const BoxDecoration(
      color: AppColors.mainColor,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WidgetCircleAvatar(
          radius: 25.0,
          widget: AssetImage(ImgAssets.profile_3),
          color: AppColors.mainColor,
        ),
        space1Vertical(context),
        const Text('Software developer'),
        const Text('+2011125362'),
      ],
    ),
  );
}

Widget _buildMenuItem(
    {required BuildContext context,
    required IconData icon,
    required String txt,
    required Function onTap}) {
  return ListTile(
    title: Text(
      txt,
      style: textTheme(context).bodyLarge,
    ),
    leading: Icon(icon),
    onTap: () {
      onTap();
    },
  );
}
