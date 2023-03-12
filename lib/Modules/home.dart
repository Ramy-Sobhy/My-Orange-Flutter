
import 'package:flutter/material.dart';
import 'package:my_orange/Modules/entertainment.dart';
import 'package:my_orange/Services/home_internet.dart';
import 'package:my_orange/Services/offers.dart';
import 'package:my_orange/Services/payment_services.dart';

import '../shared/component.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              //const SizedBox(height: 10,),
              Container(
                width:double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepOrangeAccent,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                      Text(
                          'Free yourself on',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,

                        ),
                      ),
                      Text(
                          'Facebook',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                          'migrate to',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                          'FREEMAN',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight:FontWeight.bold,

                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: double.infinity,
                height: 85,
                //color: Colors.deepOrangeAccent,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepOrangeAccent,
                ),
                child:Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:const [
                            Text(
                                'Current Balance',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          //  SizedBox(height: 10,),
                            Text(
                              '0 ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      defaultButton(
                        text: 'Recharge Now',
                        fontsize: 14,
                        textcolor: Colors.deepOrangeAccent,
                        onpress: (){},
                        background: Colors.white,
                        width: 130,
                        height: 35,
                        radius: 10,
                        borderColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              const Text(
                'Consumption',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5,),
              const Text(
                'Last Update: 1:20pm',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              Row(
                children:[
                  Expanded(
                    child: defaulttextbutton(
                      text: 'Units',
                      textcolor: Colors.grey,
                      fontsize: 15,
                      onpressed: (){
                      },
                    ),
                  ),
                  Expanded(
                    child: defaulttextbutton(
                      text: 'Internet',
                      fontsize: 15,
                      textcolor: Colors.grey,
                      onpressed: (){},
                    ),
                  ),
                  Expanded(
                    child: defaulttextbutton(
                      text: 'Roaming',
                      fontsize: 15,
                      textcolor: Colors.grey,
                      onpressed: (){},
                    ),
                  ),
                ],
              ),
              defaultUnits(
                title: 'No Units',
                onclick: (){},
              ),
              const SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    defaultcardwithtitle(
                      first_text: '#012#',
                      seconed_text: 'offers',
                      icon: Icons.wallet_giftcard,
                      OnPressed: (){
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context) => OfferService(),));
                      },
                    ),
                    const SizedBox(width: 10,),
                    defaultcardwithtitle(
                      first_text: 'Home',
                      seconed_text:'Internet',
                      icon: Icons.signal_wifi_connected_no_internet_4_sharp,
                      OnPressed: (){
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context) => HomeInternetService(),));
                      },
                    ),
                    const SizedBox(width: 10,),
                    defaultcardwithtitle(
                      first_text: 'Entertainment',
                      seconed_text: '',
                      icon: Icons.slideshow_rounded,
                      OnPressed: (){
                        Navigator.push(context,MaterialPageRoute(
                            builder: (context) => EntertainmentScreen(),));
                      },
                    ),
                    const SizedBox(width: 10,),
                    defaultcardwithtitle(
                      first_text: 'Payment',
                      seconed_text: 'Services',
                      icon: Icons.person_add_alt,
                      OnPressed: (){
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context) => PaymentService(),));
                      },
                    ),
                    const SizedBox(width: 10,),
                    defaultcardwithtitle(
                      first_text: 'Credit',
                      seconed_text: 'Services',
                      icon: Icons.credit_card_rounded,
                      OnPressed: (){},
                    ),
                    const SizedBox(width: 10,),
                    defaultcardwithtitle(
                      first_text: 'Credit',
                      seconed_text: 'Details',
                      icon: Icons.credit_card_sharp,
                      OnPressed: (){},
                    ),
                    const SizedBox(width: 10,),
                    defaultcardwithtitle(
                      first_text: 'Handset',
                      seconed_text: 'Program',
                      icon: Icons.sports_handball_sharp,
                      OnPressed: (){},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50,),
              const Text(
                  'New from Orange',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 30,),
              Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepOrangeAccent,
                ),
                child:const Center(
                  child: Text(
                    'New From Orange',
                    style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 3.9,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              const Text(
                'Extra Services',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    defaultcardwithtitle(
                      first_text: 'My Orange',
                      seconed_text:'Gifts',
                      icon: Icons.calendar_view_day,
                      OnPressed: (){},
                    ),
                    const SizedBox(width: 10,),
                    defaultcardwithtitle(
                      first_text: 'Internet Gift',
                      seconed_text: 'Card',
                      icon: Icons.wallet_giftcard,
                      OnPressed: (){},
                    ),
                    const SizedBox(width: 10,),
                    defaultcardwithtitle(
                      first_text: 'Live Chatting',
                      seconed_text: '',
                      icon: Icons.chat,
                      OnPressed: (){},
                    ),
                    const SizedBox(width: 10,),
                    defaultcardwithtitle(
                      first_text: '4G Advisor',
                      seconed_text: '',
                      icon: Icons.stay_primary_landscape_outlined,
                      OnPressed: (){},
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
