import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_orange/Screens/Login/cubit/states.dart';

class LoginCubit extends Cubit<LoginStates>{
  LoginCubit():super(LoginInitialState());

  static LoginCubit get(context) =>BlocProvider.of(context);



  void userLogin({
    required String phone,
    required String password,

  }){

    emit(LoginLoadingState());

  }

  bool isPassword = true;
  IconData suffix = Icons.visibility_outlined;

  void changePasswordVisibility(){
    isPassword =  !isPassword;
    suffix = isPassword ?Icons.visibility_outlined: Icons.visibility_off_outlined;
    emit(LoginChangePasswordVisibility());

  }

}