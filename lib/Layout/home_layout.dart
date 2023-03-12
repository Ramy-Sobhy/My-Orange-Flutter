
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_orange/Cubit/cubit.dart';
import 'package:my_orange/Cubit/states.dart';
import '../Drawer/drawer_screen.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>AppCubit(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context ,state){},
        builder: (context ,state){
          return  Scaffold(
            drawer:const DrawerScreen(),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 1,
              currentIndex:AppCubit.get(context).currentIndex,
              onTap: (index){
                AppCubit.get(context).ChangeBottomNav(index);
              },
              items:const [
                BottomNavigationBarItem(
                  icon:Icon(Icons.local_offer),
                  label: 'Offers',

                ),
                BottomNavigationBarItem(
                  icon:Icon(Icons.shopping_bag_sharp),
                  label: 'Shop',

                ),
                BottomNavigationBarItem(
                  icon:Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon:Icon(Icons.ondemand_video),
                  label: 'Entertainment',
                ),
                BottomNavigationBarItem(
                  icon:Icon(Icons.more_horiz),
                  label: 'More',
                ),

              ],
            ),
            body: AppCubit.get(context).screens[AppCubit.get(context).currentIndex],


          );
        },
      ),
    );
  }
}
