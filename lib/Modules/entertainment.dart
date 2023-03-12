
import 'package:flutter/material.dart';

class EntertainmentScreen extends StatelessWidget {
  const EntertainmentScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController (
        length: 6,
        child:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            iconTheme:const IconThemeData(
              color: Colors.white,
            ),
            title:const Text(
                'Entertainment',
            style: TextStyle(
              color: Colors.white,
            ),
            ),
            bottom: const TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.white,
              labelColor: Colors.deepOrange,
              tabs: [
                Tab(
                  text: 'Amazon Prime',

                ),
                Tab(
                  text: 'Streaming',
                ),
                Tab(
                  text: 'Music',
                ),
                Tab(
                  text: 'Orange Play',
                ),
                Tab(
                  text: 'Sports',
                ),
                Tab(
                  text: 'Social & Lifestyle',
                ),
              ],
            ),
          ),
          body:  Padding(
            padding: const EdgeInsets.all(20.0),
            child: TabBarView(
              physics: const BouncingScrollPhysics(),
                children:[
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 160,
                          height: 270,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                  'asset/images/1.jpg',
                              ),
                              const Text(
                                  'Amazon Prime',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              const SizedBox(height: 5,),
                              const Text('29 EGP / month '),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Expanded(
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Card(
                                   child: Container(
                                     width: 140,
                                     height: 270,
                                     decoration: const BoxDecoration(
                                       color: Colors.white,
                                     ),
                                     child: Column(
                                       children: [
                                         Image.asset(
                                           'asset/images/1.jpg',
                                         ),
                                         const Text(
                                           'Orange TV',
                                           style: TextStyle(
                                             fontSize: 18,
                                             fontWeight: FontWeight.bold,
                                           ),
                                         ),
                                         const SizedBox(height: 5,),
                                         const Text('1.5 EG/day '),

                                       ],
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           //SizedBox(width: ,),
                           Expanded(
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Card(
                                   child: Container(
                                     width: 140,
                                     height: 270,
                                     decoration: const BoxDecoration(
                                       color: Colors.white,
                                     ),
                                     child: Column(
                                       children: [
                                         Image.asset(
                                           'asset/images/1.jpg',
                                         ),
                                         const Text(
                                           'Orange TV',
                                           style: TextStyle(
                                             fontSize: 18,
                                             fontWeight: FontWeight.bold,
                                           ),
                                         ),
                                         const SizedBox(height: 5,),
                                         const Text('1.5 EG/day '),

                                       ],
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                       const SizedBox(height: 15,),
                       Row(
                         children: [
                           Expanded(
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Card(
                                   child: Container(
                                     width: 140,
                                     height: 270,
                                     decoration: const BoxDecoration(
                                       color: Colors.white,
                                     ),
                                     child: Column(
                                       children: [
                                         Image.asset(
                                           'asset/images/1.jpg',
                                         ),
                                         const Text(
                                           'Orange TV',
                                           style: TextStyle(
                                             fontSize: 18,
                                             fontWeight: FontWeight.bold,
                                           ),
                                         ),
                                         const SizedBox(height: 5,),
                                         const Text('1.5 EG/day '),

                                       ],
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //SizedBox(width: ,),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //SizedBox(width: ,),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //SizedBox(width: ,),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          children: [

                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    child: Container(
                                      width: 140,
                                      height: 270,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            'asset/images/1.jpg',
                                          ),
                                          const Text(
                                            'Orange TV',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 5,),
                                          const Text('1.5 EG/day '),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
            ),
          ),
        ),
    );
  }
}



