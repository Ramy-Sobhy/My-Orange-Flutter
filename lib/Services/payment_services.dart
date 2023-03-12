import 'package:flutter/material.dart';
import 'package:my_orange/shared/component.dart';

class PaymentService extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payments',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.deepOrange,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 85,
              //color: Colors.deepOrangeAccent,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.deepOrange,
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
                      height: 30,
                      radius: 10,
                      borderColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            cardPayment(
              icon: Icons.person,
              text: 'Pay for others',
            ),
            const SizedBox(height: 10,),
            cardPayment(
              icon: Icons.group_add,
              text: 'Recharge For Others',
            ),
            const SizedBox(height: 10,),
            cardPayment(
              icon: Icons.router,
              text: 'Pay Home DSL',
            ),
          ],
        ),
      ),
    );
  }
}
