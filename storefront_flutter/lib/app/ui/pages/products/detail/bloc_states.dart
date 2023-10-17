import 'package:copy_with_extension/copy_with_extension.dart';

import 'package:storefront_flutter/app/tools/bloc/state_bloc.dart';
part 'bloc_states.g.dart';

@CopyWith()
class ProductDetailBlocState extends BlocState {

  final bool? isLoading;

  ProductDetailBlocState({this.isLoading});

  @override
  List<Object?> get props => [
        isLoading
  ];

}