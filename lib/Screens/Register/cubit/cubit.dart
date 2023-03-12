import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_orange/Screens/Register/cubit/states.dart';

class RegisterCubit extends Cubit<RegisterStates>{

  RegisterCubit():super(RegisterInitialState());
  static RegisterCubit get(context) =>BlocProvider.of(context);





  bool isPassword = true;
  IconData suffix = Icons.visibility_outlined;

  void changePasswordVisibility(){
    isPassword =  !isPassword;
    suffix = isPassword ?Icons.visibility_outlined: Icons.visibility_off_outlined;
    emit(RegisterChangePasswordVisibilityState());

  }


}