import 'package:flutter/material.dart';
import '../shared/component.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepOrangeAccent,
                ),
                child:Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:const [
                      Text(
                          'Hello',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      ),
                      //SizedBox(height: 10,),
                      Text(
                          '01276930495',
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                         // letterSpacing: 4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            defalutListMoreDrawer(
              title: 'My Account',
              listIcon: Icons.person,
              ontap: (){},
            ),
            defalutListMoreDrawer(
              title: 'Orange 4G',
              listIcon: Icons.signal_wifi_connected_no_internet_4_outlined,
              ontap: (){},
            ),
            defalutListMoreDrawer(
              title: 'Offers and Promotions',
              listIcon: Icons.list_alt_outlined,
              ontap: (){},
            ),
            defalutListMoreDrawer(
              title: 'Reconnect your Line',
              listIcon: Icons.grid_3x3_outlined,
              ontap: (){},
            ),
            defalutListMoreDrawer(
              title: 'Update Line Information',
              listIcon: Icons.perm_device_information_sharp,
              ontap: (){},
            ),
            defalutListMoreDrawer(
              title: 'Entertainment',
              listIcon: Icons.music_note_outlined,
              ontap: (){},
            ),
            defalutListMoreDrawer(
              title: 'Tariff Plans',
              listIcon: Icons.queue_play_next,
              ontap: (){},
            ),
            defalutListMoreDrawer(
              title: 'Internet',
              listIcon: Icons.signal_wifi_statusbar_connected_no_internet_4_outlined,
              ontap: (){},
            ),
            defalutListMoreDrawer(
              title: 'Services',
              listIcon: Icons.miscellaneous_services_outlined,
              ontap: (){},
            ),
            defalutListMoreDrawer(
              title: 'Find a Store',
              listIcon: Icons.store,
              ontap: (){},
            ),
            defalutListMoreDrawer(
              title: 'Reserve your turn',
              listIcon: Icons.screen_lock_portrait,
              ontap: (){},
            ),
            defalutListMoreDrawer(
              title: 'Contact Us',
              listIcon: Icons.contact_phone,
              ontap: (){},
            ),
            defalutListMoreDrawer(
              title: 'Help',
              listIcon: Icons.help_outline_outlined,
              ontap: (){},
            ),
            defalutListMoreDrawer(
              title: '  Change Language',
              listIcon: Icons.language_outlined,
              ontap: (){},
            ),
            defalutListMoreDrawer(
              title: 'Sign out',
              listIcon: Icons.logout,
              ontap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
