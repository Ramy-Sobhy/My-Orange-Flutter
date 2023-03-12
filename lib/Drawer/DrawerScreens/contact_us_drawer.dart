
import 'package:flutter/material.dart';

import '../../shared/component.dart';
import '../drawer_screen.dart';

class ContactUsScreenDrawer extends StatelessWidget {
  const ContactUsScreenDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerScreen(),
      appBar: AppBar(
        title: const Text('Contact Us'),
        actions: [
          IconButton(
              onPressed: (){},
              icon:const Icon(Icons.more_vert))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ContactUs(
                title: 'Customer Services-Personal',
                title1_body: 'from Orange',
                function1: (){},
                title1_button: '110',
                title2_button: '16110',
                title2_body: 'from any Line',
                function2: (){},
              ),
              const SizedBox(height: 15,),
              ContactUs(
                title: 'Customer Services-Business',
                title1_button: '250',
                title1_body: 'from your Orange Line',
                function1: (){},

                title2_button: '16250',
                title2_body: 'from any Line',
                function2: (){},
              ),
              const SizedBox(height: 15,),
              ContactUsOne(
                title: 'Customer Services-Orange DSL',
                title1_button: '16333',
                title1_body: 'from Orange',
                function1: (){},
              ),
              const SizedBox(height: 15,),
              ContactUsOne(
                title: 'Customer Services-Orange DSL',
                title1_button: '16333',
                title1_body: 'from Orange',
                function1: (){},
              ),
              const SizedBox(height: 15,),
              ContactUsOne(
                title: 'Customer Services-while roaming',
                title1_button: '01223202020',
                title1_body: 'from Orange',
                function1: (){},
              ),
              const SizedBox(height: 15,),
              ContactUsOne(
                title: 'Orange directory',
                title1_button: 'call 800',
                title1_body: 'from any Line',
                function1: (){},
              ),
              const SizedBox(height: 15,),
              ContactUsOne(
                title: 'Website',
                title1_button: 'www.orange.eg',
                title1_body: '',
                function1: (){},
              ),

            ],
          ),
        ),
      ),
    );
  }
}
