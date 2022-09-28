import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/features/product/presentation/cubit/product_cubit.dart';
import 'package:pos/pos.dart';

import '../../domain/entities/bottom_sheet.dart';

class AddNewProduct extends StatelessWidget {
  AddNewProduct({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var category = TextEditingController();

/*
    Future<void> _buildBottomSheet({required BuildContext context}) {
      return showModalBottomSheet<void>(
        isScrollControlled: true,
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        ),
        builder: (BuildContext context) {
          return Padding(
              padding: EdgeInsetsDirectional.all(responsiveValue(context, 20)),
              child: SizedBox(
                height: responsiveValue(context, 350),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                      child: Text(
                        'Categories',
                        style: textTheme(context).labelLarge,
                      ),
                    ),
                    space30Vertical(context),
                    Expanded(
                      flex: 3,
                      child: ListView.builder(
                        itemCount: RadiobuttonModel.getRadioButton().length,
                        itemBuilder: (context, index) {
                          return null;
                        },
                      ),
                    ),
                    Expanded(
                        child: Row(
                      children: [
                        InkWell(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.red.shade50,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Icon(
                              Icons.settings,
                              color: AppColors.mainColor,
                            ),
                          ),
                          onTap: () {},
                        ),
                        space20Horizontal(context),
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.red.shade50,
                                borderRadius: BorderRadius.circular(5)),
                            child: TextButton(
                              onPressed: () {},
                              child: Center(
                                child: Row(
                                  children: [
                                    const Icon(Icons.add),
                                    Text(
                                      ' add Category',
                                      style: textTheme(context)
                                          .displayMedium!
                                          .copyWith(color: AppColors.mainColor),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              ));
        },
      );
    }
*/

    _showModalBottomSheet() {
      showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        ),
        builder: (BuildContext context) {
          return Padding(
              padding: EdgeInsetsDirectional.all(responsiveValue(context, 20)),
              child: SizedBox(
                height: responsiveValue(context, 350),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                      child: Text(
                        'Categories',
                        style: textTheme(context).labelLarge,
                      ),
                    ),
                    space30Vertical(context),
                    Expanded(
                      flex: 3,
                      child: ListView.builder(
                        itemCount: RadiobuttonModel.getRadioButton().length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1),
                              ),
                              child: RadioListTile<int>(
                                value: RadiobuttonModel.getRadioButton()[index]
                                    .index,
                                groupValue: ProductCubit.get(context).id,
                                title: Text(
                                    RadiobuttonModel.getRadioButton()[index]
                                        .name),
                                selected: index == ProductCubit.get(context).id,
                                onChanged: (value) {
                                  ProductCubit.get(context)
                                      .setRadioItem(value!);
                                  category.text =
                                      RadiobuttonModel.getRadioButton()[index]
                                          .name;
                                  Navigator.pop(context);
                                  print('conChangr =$value');
                                  // print('model=$model');
                                  print('llll${ProductCubit.get(context).id}');
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                        child: Row(
                      children: [
                        InkWell(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.red.shade50,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Icon(
                              Icons.settings,
                              color: AppColors.mainColor,
                            ),
                          ),
                          onTap: () {},
                        ),
                        space20Horizontal(context),
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.red.shade50,
                                borderRadius: BorderRadius.circular(5)),
                            child: TextButton(
                              onPressed: () {},
                              child: Center(
                                child: Row(
                                  children: [
                                    const Icon(Icons.add),
                                    Text(
                                      ' add Category',
                                      style: textTheme(context)
                                          .displayMedium!
                                          .copyWith(color: AppColors.mainColor),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              ));
        },
      );
    }

    return BlocConsumer<ProductCubit, ProductState>(
      listener: (context, state) {
        if (state is ProductRadioState) {
          if (kDebugMode) {
            print('selected${state.id}');
            _showModalBottomSheet();
          }
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: EdgeInsets.all(responsiveValue(context, 15)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 47,
                        backgroundColor: AppColors.mainColor,
                        child: CircleAvatar(
                          backgroundColor: AppColors.petrol2Color,
                          backgroundImage: AssetImage(ImgAssets.profile_3),
                          radius: 45,
                        ),
                      )
                      // ManagePhotos(
                      //   imgPath: ImgAssets.profile_3,
                      //   height: 75,
                      //   width: 50,
                      // )
                    ],
                  ),
                  space30Vertical(context),
                  WidgetTextForm(
                    label: 'Name',
                    controller: null,
                    onTap: () {},
                    validate: (value) {},
                    type: TextInputType.name,
                    onSubmit: () {},
                  ),
                  space16Vertical(context),
                  WidgetTextForm(
                    label: 'type',
                    controller: null,
                    onTap: () {},
                    validate: (value) {},
                    type: TextInputType.text,
                    onSubmit: () {},
                  ),
                  space16Vertical(context),
                  WidgetTextForm(
                    label: 'Category',
                    controller: category,
                    onTap: () {
                      // _buildBottomSheet(context: context);
                      // buildBottomSheet();
                      _showModalBottomSheet();
                    },
                    validate: (value) {},
                    isSuffixIcon: true,
                    hideCursor: false,
                    type: TextInputType.none,
                    onSubmit: () {},
                  ),
                  space16Vertical(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Price',
                          style: textTheme(context).labelLarge,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: WidgetTextForm(
                          label: 'price',
                          controller: null,
                          onTap: () {},
                          isSuffixIcon: false,
                          hideCursor: false,
                          validate: (value) {},
                          type: TextInputType.number,
                          onSubmit: () {},
                        ),
                      ),
                    ],
                  ),
                  space16Vertical(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Total stock',
                          style: textTheme(context)
                              .labelLarge!
                              .copyWith(color: AppColors.mainColor),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: WidgetTextForm(
                          label: 'total',
                          controller: category,
                          onTap: () {},
                          isSuffixIcon: false,
                          hideCursor: false,
                          validate: (value) {},
                          type: TextInputType.number,
                          onSubmit: () {},
                        ),
                      ),
                    ],
                  ),
                  space50Vertical(context),
                  MainButton(
                    onClick: () {},
                    buttonColor: AppColors.secondaryLight,
                    text: 'Save',
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
/*
*
* Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 20.0),
                                child: RadioListTile<RadiobuttonModel>(
                                  value:
                                      RadiobuttonModel.getRadioButton()[index],
                                  title: SizedBox(
                                    height: 30,
                                    child: Text(
                                      RadiobuttonModel.getRadioButton()[index]
                                          .name,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  groupValue:
                                      ProductCubit.get(context).radioItem,
                                  onChanged: (RadiobuttonModel? value) {
                                    if (kDebugMode) {
                                      print(value);
                                    }
                                    ProductCubit.get(context)
                                        .setRadioItem(value!);
                                    Navigator.pop(context);
                                    category.text = value.name;
                                  },
                                  activeColor: AppColors.mainColor,
                                  selected: ProductCubit.get(context)
                                          .radioItem
                                          .index ==
                                      RadiobuttonModel.getRadioButton()[index]
                                          .index,
                                ),
                              ),
                            ),
                          );
* */
