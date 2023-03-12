import 'package:flutter/material.dart';
import 'package:my_orange/Drawer/DrawerScreens/contact_us_drawer.dart';
import 'package:my_orange/Screens/Login/login_screen.dart';
import '../shared/component.dart';
import 'Help Drawer/help_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 90,
      ),
      child: Drawer(
        width: 260,
        child: ListView(
          children:
          [
            defalutListDrawer(
              title: 'My Account',
              listIcon: Icons.person,
              ontap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => LoginScreen(),));
              },
            ),
            defalutListDrawer(
              title: 'Orange 4G',
              listIcon: Icons.signal_wifi_connected_no_internet_4_outlined,
              ontap: (){},
            ),
            defalutListDrawer(
              title: 'Orange Cash',
              listIcon: Icons.money,
              ontap: (){},
            ),
            defalutListDrawer(
              title: 'Offers and Promotions',
              listIcon: Icons.list_alt_outlined,
              ontap: (){},
            ),

            defalutListDrawer(
              title: 'Reconnect your Line',
              listIcon: Icons.grid_3x3_outlined,
              ontap: (){},
            ),

            defalutListDrawer(
              title: 'Update Line Information',
              listIcon: Icons.perm_device_information_sharp,
              ontap: (){},
            ),
            defalutListDrawer(
              title: 'Entertainment',
              listIcon: Icons.music_note_outlined,
              ontap: (){},
            ),
            defalutListDrawer(
              title: 'Tariff Plans',
              listIcon: Icons.queue_play_next,
              ontap: (){},
            ),
            defalutListDrawer(
              title: 'Internet',
              listIcon: Icons.signal_wifi_statusbar_connected_no_internet_4_outlined,
              ontap: (){},
            ),
            defalutListDrawer(
              title: 'Services',
              listIcon: Icons.miscellaneous_services_outlined,
              ontap: (){},
            ),
            defalutListDrawer(
              title: 'Find a Store',
              listIcon: Icons.store,
              ontap: (){},
            ),
            defalutListDrawer(
              title: 'Reserve your turn',
              listIcon: Icons.screen_lock_portrait,
              ontap: (){},
            ),
            defalutListDrawer(
              title: 'Contact Us',
              listIcon: Icons.contact_phone,
              ontap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => ContactUsScreenDrawer(),));
              },
            ),
            defalutListDrawer(
              title: 'Help',
              listIcon: Icons.help_outline_outlined,
              ontap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => HelpScreenDrawer(),));
              },
            ),
          ],
        ),
      ),
    );
  }
}

