part of 'product_cubit.dart';

abstract class ProductState {
  const ProductState();
}

class ProductInitial extends ProductState {}

class ProductRadioState extends ProductState {
  int id;

  ProductRadioState({required this.id});
}
