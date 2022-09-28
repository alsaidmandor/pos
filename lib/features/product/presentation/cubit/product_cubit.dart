import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  static ProductCubit get(context) => BlocProvider.of<ProductCubit>(context);

  // List value = <RadiobuttonModel>[
  //   RadiobuttonModel(name: 'Mail', index: 0),
  //   RadiobuttonModel(name: 'Mail_2', index: 1),
  //   RadiobuttonModel(name: 'Mail_3', index: 2),
  //   RadiobuttonModel(name: 'Mail_4', index: 3),
  // ];

  // Default Radio Button Item
  // RadiobuttonModel radioItem = RadiobuttonModel.getRadioButton().first.index;

  // Group Value for Radio Button.
  int id = 1;

  void setRadioItem(int index) {
    id = index;
    emit(ProductRadioState(id: index));
    print('Cubit $index');
  }
}
