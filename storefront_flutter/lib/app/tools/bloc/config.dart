import 'package:bloc/bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

BindConfig<T> blocConfig<T extends Bloc>(){
  return BindConfig(
    notifier: (bloc) => bloc.stream,
    onDispose: (bloc) => bloc.close(),
  );
}