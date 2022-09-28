import 'package:flutter/material.dart';
import 'package:pos/pos.dart';

import '../../domain/entities/bottom_sheet.dart';
import '../cubit/product_cubit.dart';

class RadioButtonWidget extends StatelessWidget {
  const RadioButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductCubit, ProductState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
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
                              groupValue:
                                  state is ProductRadioState ? state.id : 0,
                              title: Text(
                                  RadiobuttonModel.getRadioButton()[index]
                                      .name),
                              selected: index == ProductCubit.get(context).id,
                              onChanged: (value) {
                                ProductCubit.get(context).setRadioItem(value!);
                                // category.text =
                                RadiobuttonModel.getRadioButton()[index].name;
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
}
