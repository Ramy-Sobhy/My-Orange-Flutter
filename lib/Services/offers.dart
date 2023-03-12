import 'package:flutter/material.dart';
import 'package:my_orange/shared/component.dart';

class OfferService extends StatelessWidget {
  const OfferService({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('#012# Offers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                          '#012#Offers',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                          'Enjoy new offers everyday',

                        style: TextStyle(
                          color: Colors.grey,

                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.share_outlined),
                      color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              cardOffer(
                icon: Icons.phone_iphone,
                title: '50x the recharge unit',
                subscribe: (){},
                description: '50 times your recharge as units '
                    'when you recharge with EGP 10 or more',
              ),
              const SizedBox(height: 15,),
              cardOffer(
                icon: Icons.phone_iphone,
                title: '50x the recharge unit',
                subscribe: (){},
                description: '50 times your recharge as units '
                    'when you recharge with EGP 10 or more',
              ),
              const SizedBox(height: 15,),
              cardOffer(
                icon: Icons.phone_iphone,
                title: '50x the recharge unit',
                subscribe: (){},
                description: '50 times your recharge as units '
                    'when you recharge with EGP 10 or more',
              ),
              const SizedBox(height: 15,),
              cardOffer(
                icon: Icons.phone_iphone,
                title: '50x the recharge unit',
                subscribe: (){},
                description: '50 times your recharge as units '
                    'when you recharge with EGP 10 or more',
              ),
              const SizedBox(height: 15,),
              cardOffer(
                icon: Icons.phone_iphone,
                title: '50x the recharge unit',
                subscribe: (){},
                description: '50 times your recharge as units '
                    'when you recharge with EGP 10 or more',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
