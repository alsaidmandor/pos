import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets_name.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/image_manage.dart';
import '../../../../core/widgets/widget_TextForm.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.addNewProductRoutes);
              },
              padding: EdgeInsets.all(
                responsiveValue(context, 5),
              ),
              icon: const Icon(
                Icons.add,
                size: 25,
              )),
          space20Horizontal(context),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(responsiveValue(context, 20)),
        child: Column(
          children: [
            SizedBox(
              height: responsiveValue(context, 50),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: WidgetTextForm(
                        controller: null,
                        type: null,
                        onSubmit: () {},
                        validate: () {},
                        label: 'Search',
                        onTap: () {
                          print('Ok');
                        }),
                  ),
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: responsiveValue(context, 40),
                            width: responsiveValue(context, 40),
                            decoration: BoxDecoration(
                                color: Colors.red.shade200,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15))),
                            child: Center(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.qr_code_scanner)),
                            ),
                          ),
                          Container(
                            height: responsiveValue(context, 40),
                            width: responsiveValue(context, 40),
                            decoration: BoxDecoration(
                                color: Colors.blue.shade200,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15))),
                            child: Center(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.filter_list)),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            space16Vertical(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Product Name', style: textTheme(context).bodyLarge),
                Text(' In Stock',
                    style: textTheme(context)
                        .bodyLarge!
                        .copyWith(color: AppColors.orangeColor))
              ],
            ),
            space16Vertical(context),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: AppColors.petrolColor,
                        height: 1,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ManagePhotos(
                          imgPath: ImgAssets.profile_3,
                          width: 50,
                          height: 75,
                        ),
                        space10Horizontal(context),
                        Column(
                          children: [
                            Text(
                              'فيبر',
                              style: textTheme(context).labelLarge,
                            ),
                            Text(
                              '250',
                              style: textTheme(context)
                                  .displayMedium!
                                  .copyWith(fontSize: 15, height: 1.3),
                            ),
                            Text(
                              '10م',
                              style: textTheme(context)
                                  .displayMedium!
                                  .copyWith(fontSize: 15, height: 1.3),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 1,
                            color: AppColors.petrolColor,
                          ),
                          Text(
                            '35',
                            style: textTheme(context)
                                .bodyLarge!
                                .copyWith(color: AppColors.mainColor),
                          ),
                          space1Horizontal(context)
                        ],
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
