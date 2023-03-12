import 'package:flutter/material.dart';
import 'Screens/Login/login_screen.dart';

void main(){
  runApp(const MyOrange());
}

class MyOrange extends StatelessWidget {
  const MyOrange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          color: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,

          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
       // scaffoldBackgroundColor: Colors.white,
        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.black,
        ),
        bottomNavigationBarTheme:const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.deepOrange,
          elevation: 1,
          unselectedItemColor: Colors.grey,

        ),
        tabBarTheme:const TabBarTheme(
          //indicatorSize: TabBarIndicatorSize.tab,
         unselectedLabelColor: Colors.grey,
          labelColor: Colors.orange,
          labelStyle: TextStyle(
            //backgroundColor: Colors.black,
            color: Colors.red
          ),
        ),

      ),
      home: LoginScreen(),
    );
  }
}
