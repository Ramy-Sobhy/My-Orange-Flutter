// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:my_orange/Cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_orange/Modules/shop.dart';
import '../Modules/entertainment.dart';
import '../Modules/home.dart';
import '../Modules/more.dart';
import '../Modules/offers.dart';
class AppCubit extends Cubit<AppStates>{
  AppCubit():super(AppInitialState());

  static AppCubit get(context)=>BlocProvider.of(context);


  int currentIndex = 2;

  List<Widget> screens =[
    OffersScreen(),
    ShopScreen(),
    HomeScreen(),
    EntertainmentScreen(),
    MoreScreen(),
  ];

  List<String> titles = [
    'Offers',
    'Shop',
    'My Account',
    'Entertainment',
    'More',
  ];


  void ChangeBottomNav(index){
    currentIndex = index;
    emit(AppChangeBottomNavState());
  }


}