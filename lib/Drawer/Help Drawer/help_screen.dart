
import 'package:flutter/material.dart';
import 'package:my_orange/shared/component.dart';

import '../drawer_screen.dart';
import 'about_my_orange.dart';

class HelpScreenDrawer extends StatelessWidget {
  const HelpScreenDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerScreen(),
      appBar: AppBar(
        title: Text('Help'),
        actions: [
          IconButton(
              onPressed: (){}, 
              icon:Icon(Icons.more_vert))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children:[
            defaultButton(
                borderColor: Colors.white,
                radius: 0,
                background: Colors.black26,
                textcolor: Colors.black,
                fontsize: 16,
                text:'About My Orange Application',
                onpress: (){

                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => AboutMyOrangeApplication(),));
                },
            ),
            defaultButton(
              borderColor: Colors.white,
              radius: 0,
              background: Colors.black26,
              textcolor: Colors.black,
              fontsize: 16,
              text:'4G',
              onpress: (){},
            ),
            defaultButton(
              borderColor: Colors.white,
              radius: 0,
              background: Colors.black26,
              textcolor: Colors.black,
              fontsize: 16,
              text:'Terms and Conditions',
              onpress: (){},
            ),
            defaultButton(
              borderColor: Colors.white,
              radius: 0,
              background: Colors.black26,
              textcolor: Colors.black,
              fontsize: 16,
              text:'Cancel Your Home DSL Service',
              onpress: (){},
            ),
          ],
        ),
      ),
    );
  }
}
