import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets_name.dart';
import '../../../../core/utils/constants.dart';
import '../widgets/widget_drawer.dart';
import '../widgets/widget_home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const DrawerMenu(),
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              width: double.infinity,
              ImgAssets.home,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: responsiveValue(context, 10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  space16Vertical(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Today's sales",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(fontSize: 20)),
                      Text("11111.01.02",
                          style: Theme.of(context).textTheme.displayMedium),
                    ],
                  ),
                  space16Vertical(context),
                  HomeBody(
                    color: AppColors.mainColor,
                    width: double.infinity,
                    height: responsiveValue(context, 60),
                    backgroundIcon: Colors.blue.shade200,
                    icon: Icons.receipt,
                    txt: 'All Sales',
                    iconColor: Colors.blue.shade500,
                    isScreenView: true,
                    onTap: () {},
                  ),
                  space16Vertical(context),
                  HomeBody(
                    color: AppColors.mainColor,
                    width: double.infinity,
                    height: responsiveValue(context, 60),
                    backgroundIcon: Colors.brown.shade200,
                    icon: Icons.production_quantity_limits,
                    txt: 'Products',
                    iconColor: Colors.brown.shade500,
                    isScreenView: true,
                    onTap: () {
                      Navigator.pushNamed(context, Routes.productRoutes);
                    },
                  ),
                  space16Vertical(context),
                  Row(
                    children: [
                      HomeBody(
                        color: AppColors.mainColor,
                        width: responsiveValue(context, 170),
                        height: responsiveValue(context, 170),
                        backgroundIcon: Colors.red.shade200,
                        icon: Icons.group,
                        iconColor: Colors.red.shade500,
                        txt: 'Customers',
                        isScreenView: false,
                        onTap: () {},
                      ),
                      space14Horizontal(context),
                      HomeBody(
                        color: AppColors.mainColor,
                        width: responsiveValue(context, 170),
                        height: responsiveValue(context, 170),
                        backgroundIcon: Colors.green.shade200,
                        icon: Icons.shopping_basket,
                        iconColor: Colors.green.shade500,
                        txt: 'New Sale',
                        isScreenView: false,
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
