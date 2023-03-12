
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          const SizedBox(height: 100,),
          Container(
            width: 150,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Image.asset('asset/images/1.jpg'),
                const SizedBox(height: 10,),
                const Text(
                    'E-shop',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                ),
                const SizedBox(height: 10,),
                const Text(
                  'Orange online Shop provide best offers'
                      '& price for latest smartphones,'
                      'Accessories, Tablets,Laptops,'
                      'Smart TVs,Gaming & Routers in Egypt',
                  style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}



/*

*


 DefaultTabController(
            length: 3,
            child:TabBar(
              tabs:[
                Tab(
                  text: 'Music',
                ),
                Tab(
                  text: 'Music',
                ),
                Tab(
                  text: 'Music',
                ),
            ],
          ),
         ),
        TabBarView(
            children: [
              Center(
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 3000,
                ),
              ),
              Center(
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 3000,
                ),
              ),
              Center(
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 3000,
                ),
              ),
            ]
        ),







*/