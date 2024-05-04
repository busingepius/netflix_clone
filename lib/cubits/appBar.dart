import "package:flutter_bloc/flutter_bloc.dart";

class AppBarCubit extends Bloc<AppBarCubit,double>{
  AppBarCubit():super(0);

  void setOffset(double offset){
    return emit(offset);
  }
}