
import 'package:flutter/material.dart';
import 'package:my_orange/Drawer/drawer_screen.dart';
import 'package:my_orange/shared/component.dart';

class AboutMyOrangeApplication extends StatelessWidget {
  const AboutMyOrangeApplication({Key? key}) : super(key: key);

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
          children: [
           defaultButton(
               radius: 0,
               borderColor: Colors.white38,
               fontsize: 16,
               background: Colors.black26,
               textcolor: Colors.black,
               text:'What\'s My Orange',
               onpress: (){},
           ),
          ],
        ),
      ),
    );
  }
}
