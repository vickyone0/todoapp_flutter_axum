import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver{

  @override
  void onCreate(BlocBase bloc) {

    print("${bloc.runtimeType} created !");

    super.onCreate(bloc);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    print("$bloc changed - $change");
    super.onChange(bloc, change);
  }
}